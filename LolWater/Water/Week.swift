//
//  Week.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/3/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import Foundation

struct Week : Codable {
    var Sunday: Int
    var Monday: Int
    var Tuesday: Int
    var Wednesday: Int
    var Thursday: Int
    var Friday: Int
    var Saturday: Int
    
    static let `default` = Self()
    
    init() {
        self.Sunday = 0
        self.Monday = 0
        self.Tuesday = 0
        self.Wednesday = 0
        self.Thursday = 0
        self.Friday = 0
        self.Saturday = 0
        
    }
}

