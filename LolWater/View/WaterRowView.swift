//
//  CupRowView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/19/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct WaterRowView: View {
  var day: Day
  var pixelMultiplier: CGFloat = 2.5

  
  var body: some View {
    HStack(spacing: 10) {
      RoundedRectangle(cornerRadius: 8)
        .fill(Color.blue)
        .frame(width: CGFloat(day.oncesOfWaterRecorded) * pixelMultiplier, height: 30)
        .frame(width: 200, height: 30)
    }
  }
}

struct WaterRowView_Previews: PreviewProvider {
  static var previews: some View {
    WaterRowView(day: Day(id: 1, date: Date(), weekday: "Monday", oncesOfWaterRecorded: 8))
  }
}
