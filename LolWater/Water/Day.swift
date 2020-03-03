//
//  Day.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/3/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

/** Abstract:
* An object that models a user profile.
*/
import Foundation

struct Day : Codable {
    var trackedCups: Int
    var calendarDate: Date
        
    init() {
      self.trackedCups = 0
      self.calendarDate = Date()
    }
    
    init(trackedCups: Int, calendarDate: Date) {
        self.trackedCups = trackedCups
        self.calendarDate = calendarDate
    }
}
