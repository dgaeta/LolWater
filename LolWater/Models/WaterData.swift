//
//  UserData.swift
//  LolWater
//
//  Created by Daniel Gaeta on 12/28/19.
//  Copyright © 2019 Daniel Gaeta. All rights reserved.
//

import SwiftUI
import Combine

final class WaterData: ObservableObject {
    @Published var amCups = Array(repeating: 0, count: 12)
    @Published var pmCups = Array(repeating: 0, count: 12)
    @Published var weekCups = Array(1...7)
    @Published var todayIndex = 4
    @Published var activeHour = 4
    @Published var activeHourSuffix = "PM"
    @Published var profile = Profile.default
}
