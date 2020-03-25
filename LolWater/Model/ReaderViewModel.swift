//
//  ReaderViewModel.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/19/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI
import Combine
import Foundation

class ReaderViewModel: ObservableObject {
  private let api = NetworkAPI()
  let userName = "DanTest5"
  @Published private var allDays = [
    Day(id: "DanTest5_2020-03-18", date: "2020-03-18", weekday: "Sunday", ozDrank: 8),
    Day(id: "DanTest5_2020-03-19", date: "2020-03-19", weekday: "Monday", ozDrank: 64),
    Day(id: "DanTest5_2020-03-20", date: "2020-03-20", weekday: "Tuesday", ozDrank: 16),
    Day(id: "DanTest5_2020-03-21", date: "2020-03-21", weekday: "Wednesdday", ozDrank: 48),
    Day(id: "DanTest5_2020-03-22", date: "2020-03-22", weekday: "Thursday", ozDrank: 80),
    Day(id: "DanTest5_2020-03-23", date: "2020-03-23", weekday: "Friday", ozDrank: 55),
    Day(id: "DanTest5_2020-03-24", date: "2020-03-24", weekday: "Saturday", ozDrank: 60)
  ]
  private var subscriptions = Set<AnyCancellable>()
  
  @Published var error: NetworkAPI.Error? = nil
  
  var days: [Day] {
    return allDays
  }

  func fetchDays() {
    api
      .days()
      .receive(on: DispatchQueue.main)
      .sink(receiveCompletion: { completion in
        if case .failure(let error) = completion {
          self.error = error
        }
      }, receiveValue: { days in
        self.allDays = days
        self.error = nil
      })
      .store(in: &subscriptions)
  }
}
