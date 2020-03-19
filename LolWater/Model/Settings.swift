//
//  Settings.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/2/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import Combine
import Foundation

fileprivate let daysFile = "days"

final class Settings : ObservableObject {
  var rememberUser: Bool = false
  
  @Published var days = [Day]() {
    didSet {
      try? JSONFile.save(value: days, named: daysFile)
    }
  }
  
  init () {
    if let days: [Day] = try? JSONFile.loadValue(named: daysFile) {
      self.days = days
    }
  }
  
}
