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
  private let api = API()
  @Published private var allDays = [
    Day(id: 1, date: Date.init(), weekday: "Sunday", oncesOfWaterRecorded: 8),
    Day(id: 2, date: Date.init(), weekday: "Monday", oncesOfWaterRecorded: 64),
    Day(id: 3, date: Date.init(), weekday: "Tuesday", oncesOfWaterRecorded: 16),
    Day(id: 4, date: Date.init(), weekday: "Wednesdday", oncesOfWaterRecorded: 48),
    Day(id: 5, date: Date.init(), weekday: "Thursday", oncesOfWaterRecorded: 80),
    Day(id: 6, date: Date.init(), weekday: "Friday", oncesOfWaterRecorded: 55),
    Day(id: 7, date: Date.init(), weekday: "Saturday", oncesOfWaterRecorded: 60)
  ]
  private var subscriptions = Set<AnyCancellable>()
  
  @Published var error: API.Error? = nil
  
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
