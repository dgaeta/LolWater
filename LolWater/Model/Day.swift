//
//  Day.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/18/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct Day: Codable, Identifiable {
  let id: Int
  let date: Date
  let weekday: String
  let oncesOfWaterRecorded: Int
}

extension Day: Comparable {
  static func < (lhs: Day, rhs: Day) -> Bool {
    return lhs.date < rhs.date
  }
}

extension Day: CustomDebugStringConvertible {
  var debugDescription: String {
    return "\(self.id) - \(self.date.description) - \(self.oncesOfWaterRecorded)"
  }
}
