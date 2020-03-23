//
//  API.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/19/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import AWSAppSync
import Foundation
import Combine
import SwiftUI

struct NetworkAPI {
  
  /// API Errors.
  enum Error: LocalizedError, Identifiable {
    var id: String { localizedDescription }
    
    case addressUnreachable(URL)
    case invalidResponse
    
    var errorDescription: String? {
      switch self {
      case .invalidResponse: return "The server responded with garbage."
      case .addressUnreachable(let url): return "\(url.absoluteString) is unreachable."
      }
    }
  }
  
  /// API endpoints.
  enum EndPoint {
    static let baseURL = URL(string: "https://hacker-news.firebaseio.com/v0/")!
    
    case days
    case day(Int)
    
    var url: URL {
      switch self {
      case .days:
        return EndPoint.baseURL.appendingPathComponent("newstories.json")
      case .day(let id):
        return EndPoint.baseURL.appendingPathComponent("item/\(id).json")
      }
    }
  }

  /// Maximum number of days to fetch (reduce for lower API strain during development).
  var maxDays = 10

  /// A shared JSON decoder to use in calls.
  private let decoder = JSONDecoder()

  private let apiQueue = DispatchQueue(label: "API", qos: .default, attributes: .concurrent)
  
  // Add your API code here.
  func day(id: Int) -> AnyPublisher<Day, Error> {
    URLSession.shared.dataTaskPublisher(for: EndPoint.day(id).url)
      .receive(on: apiQueue)
      .map { $0.0 }
      .decode(type: Day.self, decoder: decoder)
      .catch { _ in Empty() }
      .eraseToAnyPublisher()
  }
  
  func mergedDays(ids dayIDs: [Int]) -> AnyPublisher<Day, Error> {
    let dayIDs = Array(dayIDs.prefix(maxDays))
    
    precondition(!dayIDs.isEmpty)

    let initialPublisher = day(id: dayIDs[0])
    let remainder = Array(dayIDs.dropFirst())
    
    return remainder.reduce(initialPublisher) { (combined, id) -> AnyPublisher<Day, Error> in
      return combined.merge(with: day(id: id))
        .eraseToAnyPublisher()
    }
  }
  
  func days() -> AnyPublisher<[Day], Error> {
    URLSession.shared.dataTaskPublisher(for: EndPoint.days.url)
      .map { $0.0 }
      .decode(type: [Int].self, decoder: decoder)
      .mapError { error in
        switch error {
        case is URLError:
          return Error.addressUnreachable(EndPoint.days.url)
        default: return Error.invalidResponse
        }
      }
      .filter { !$0.isEmpty }
      .flatMap { dayIDs in
        return self.mergedDays(ids: dayIDs)
      }
      .scan([], { (days, day) -> [Day] in
        return days + [day]
      })
      .map { days in
        return days.sorted()
      }
      .eraseToAnyPublisher()
  }
}
