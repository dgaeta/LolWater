//
//  WeekdayHeaderView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/27/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct WeekdayHeaderView: View {
  var dateManager: DateManager
  
  var body: some View {
      HStack(alignment: .center) {
          ForEach(self.getWeekdayHeaders(calendar: self.dateManager.calendar), id: \.self) { weekday in
              Text(weekday)
                  .font(.system(size: 20))
                  .frame(minWidth: 0, maxWidth: .infinity)
                  .foregroundColor(self.dateManager.colors.weekdayHeaderColor)
          }
      }.background(dateManager.colors.weekdayHeaderBackColor)
  }
  
  func getWeekdayHeaders(calendar: Calendar) -> [String] {
      
      let formatter = DateFormatter()
      
      var weekdaySymbols = formatter.shortStandaloneWeekdaySymbols
      let weekdaySymbolsCount = weekdaySymbols?.count ?? 0
      
      for _ in 0 ..< (1 - calendar.firstWeekday + weekdaySymbolsCount){
          let lastObject = weekdaySymbols?.last
          weekdaySymbols?.removeLast()
          weekdaySymbols?.insert(lastObject!, at: 0)
      }
      
      return weekdaySymbols ?? []
  }
}

struct WeekdayHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        WeekdayHeaderView(dateManager: DateManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 0))
    }
}
