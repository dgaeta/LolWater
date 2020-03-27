//
//  CalendarHistoryView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/27/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct CalendarHistoryView: View {
  @Binding var isPresented: Bool
  
  @ObservedObject var dateManager: DateManager
  
  var body: some View {
    Group {
      WeekdayHeaderView(dateManager: self.dateManager)
      Divider()
      List {
          ForEach(0..<numberOfMonths()) { index in
              MonthView(isPresented: self.$isPresented, dateManager: self.dateManager, monthOffset: index)
          }
          Divider()
      }
    }
  }
  
  func numberOfMonths() -> Int {
      return dateManager.calendar.dateComponents([.month], from: dateManager.minimumDate, to: LolWaterMaximumDateMonthLastDay()).month! + 1
  }
  
  func LolWaterMaximumDateMonthLastDay() -> Date {
      var components = dateManager.calendar.dateComponents([.year, .month, .day], from: dateManager.maximumDate)
      components.month! += 1
      components.day = 0
      
      return dateManager.calendar.date(from: components)!
  }

}

struct CalendarHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CalendarHistoryView(isPresented: .constant(false), dateManager: DateManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 0))
            CalendarHistoryView(isPresented: .constant(false), dateManager: DateManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*32), mode: 0))
                .environment(\.colorScheme, .dark)
                .environment(\.layoutDirection, .rightToLeft)
        }
    }
}
