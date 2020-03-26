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
  
  var body: some View {
    VStack(alignment: .leading) {
      HStack(spacing: 10) {
        ForEach(self.week) { dayData in
          VStack(alignment: .center) {
            Text(dayData.date)
              .font(.caption)
            Text(dayData.date)
              .padding(.bottom, 100)
            WaterRowView(ozDrank: dayData.ozDrank)
              .padding(.bottom, 100)
            PersonSymbolView(ozDrank: dayData.ozDrank, height: 100, width: 35)
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
