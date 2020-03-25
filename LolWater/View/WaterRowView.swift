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
  var pixelMultiplier: CGFloat = 5

  
  var body: some View {
    VStack(spacing: 10) {
      RoundedRectangle(cornerRadius: 8)
        .fill(Color.blue)
        .frame(width: 30, height: CGFloat(day.ozDrank) * pixelMultiplier)
        .frame(width: 30, height: 200)
    }
  }
}

struct WaterRowView_Previews: PreviewProvider {
  static var previews: some View {
    WaterRowView(day: Day(id: "DanTest5_2020-03-24", date: "2020-03-24", weekday: "Monday", ozDrank: 80))
  }
}
