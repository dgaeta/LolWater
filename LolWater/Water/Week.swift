//
//  Week.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/3/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import Foundation

struct Week : Codable {
    var Sunday: Day
    var Monday: Day
    var Tuesday: Day
    var Wednesday: Day
    var Thursday: Day
    var Friday: Day
    var Saturday: Day
    
    static let `default` = Self()
    
    init() {
        self.Sunday = Day()
        self.Monday = Day()
        self.Tuesday = Day()
        self.Wednesday = Day()
        self.Thursday = Day()
        self.Friday = Day()
        self.Saturday = Day()
        
    }
}

