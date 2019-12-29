//
//  UserData.swift
//  LolWater
//
//  Created by Daniel Gaeta on 12/28/19.
//  Copyright © 2019 Daniel Gaeta. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var waterThisWeek = Array(repeating: 0, count: 24)
    // @Published var lolWater = lolWaterData
}
