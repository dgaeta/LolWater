//
//  DayView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/20/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct DayView: View {
  var day: Day
  
  var body: some View {
    HStack {
      PersonSymbolView(day: day, height: 200, width: 200)
      WaterRowView(day: day)
    }
  }
}

struct DayView_Previews: PreviewProvider {
  static var previews: some View {
    DayView(day: Day(id: 1, date: Date(), weekday: "Monday", oncesOfWaterRecorded: 64))
  }
}
