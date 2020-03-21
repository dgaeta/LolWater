//
//  WeekView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/20/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct WeekView: View {
  var week: [Day]
  let calendar = Calendar.current
  
  func getWeekdayName(day: Day) -> String {
    let index = Calendar.current.component(.weekday, from: day.date) // this returns an Int
    return Calendar.current.weekdaySymbols[index - 1] // subtract 1 since the index starts at 1
  }
  
  func getDateNumber(day: Day) -> String {
    let month = self.calendar.component(.month, from: day.date)
    let dayNumber = self.calendar.component(.day, from: day.date)
    return "\(month)/\(dayNumber)"
  }
  
  var body: some View {
    VStack(alignment: .leading) {
      HStack(spacing: 10) {
        ForEach(self.week) { day in
          VStack(alignment: .center) {
            Text(self.getWeekdayName(day: day))
              .font(.caption)
            Text(self.getDateNumber(day: day))
              .padding(.bottom, 100)
            WaterRowView(day: day)
              .padding(.bottom, 100)
            PersonSymbolView(day: day, height: 100, width: 35)
          }
          .frame(width: 40, height: 500)
        }
      }
      .padding(.leading, 10)
    }
  }
}

struct WeekView_Previews: PreviewProvider {
    static var previews: some View {
      WeekView(week: ReaderViewModel().days)
    }
}
