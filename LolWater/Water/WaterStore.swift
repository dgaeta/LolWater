//
//  WaterData.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/3/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI
import Combine

final internal class WaterStore {
    
    internal let willChange = PassthroughSubject<WaterStore, Never>()

    @Published var week: Week = Week() 


    init() {
        self.week.Sunday = 0
        self.week.Monday = 0
        self.week.Tuesday = 0
        self.week.Wednesday = 0
        self.week.Thursday = 0
        self.week.Friday = 0
        self.week.Saturday = 0
    }
    
    public func incrementWeekDay(day: WeekDay) {
        switch day {
            case WeekDay.sunday:
                self.week.Sunday += 1
            case WeekDay.monday:
                self.week.Monday += 1
            case WeekDay.tuesday:
                self.week.Tuesday += 1
            case WeekDay.wednesday:
                self.week.Wednesday += 1
            case WeekDay.thursday:
                self.week.Thursday += 1
            case WeekDay.friday:
                self.week.Friday += 1
            case WeekDay.saturday:
                self.week.Saturday += 1
        }
    }
    
    public func decrementWeekDay(day: WeekDay) {
        switch day {
            case WeekDay.sunday:
                self.week.Sunday -= 1
            case WeekDay.monday:
                self.week.Monday -= 1
            case WeekDay.tuesday:
                self.week.Tuesday -= 1
            case WeekDay.wednesday:
                self.week.Wednesday -= 1
            case WeekDay.thursday:
                self.week.Thursday -= 1
            case WeekDay.friday:
                self.week.Friday -= 1
            case WeekDay.saturday:
                self.week.Saturday -= 1
        }
    }
}

