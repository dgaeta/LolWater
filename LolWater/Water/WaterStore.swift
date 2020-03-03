//
//  WaterData.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/3/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import Combine

final internal class WaterStore {

    var week: Week = Week() {
      willSet {
        willChange.send(self)
      }
    }

    internal let willChange = PassthroughSubject<WaterStore, Never>()

    init() {
        self.week.Sunday = Day()
        self.week.Monday = Day()
        self.week.Tuesday = Day()
        self.week.Wednesday = Day()
        self.week.Thursday = Day()
        self.week.Friday = Day()
        self.week.Saturday = Day()
    }
}

