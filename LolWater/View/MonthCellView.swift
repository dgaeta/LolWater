//
//  MonthCell.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/27/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct MonthCellView: View {
  var lolwaterDate: LolWaterDate
  
  var cellWidth: CGFloat
  var ozDrank: Int

  func getBackgroundColor() -> Color {
    if self.ozDrank == 0 {
      return Color.white
    } else if self.ozDrank < 30 {
      return Color.red
    } else if self.ozDrank < 63 {
      return Color.green
    } else {
      return Color.green
    }
  }
  
  func getFontWeight() -> Font.Weight {
    if self.ozDrank >= 0 {
      return Font.Weight.medium
    } else {
      return Font.Weight.thin
    }
  }
  
  func getTextColor() -> Color {
    if self.ozDrank >= 0 {
      return Color.gray
    } else {
      return Color.black
    }
  }
    
  var body: some View {
    VStack {
      Text(lolwaterDate.getText())
            .fontWeight(getFontWeight())
            .foregroundColor(getTextColor())
            .frame(width: cellWidth, height: cellWidth)
            .font(.system(size: 20))
            .background(getBackgroundColor())
        .cornerRadius(cellWidth/2)
      
      Text("\(ozDrank) oz")
        .foregroundColor(Color.blue)
        .font(.caption)
    }
  }
}

struct MonthCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
          MonthCellView(lolwaterDate: LolWaterDate(date: Date(), dateManager: DateManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 0), isDisabled: false, isToday: false, isSelected: false, isBetweenStartAndEnd: false), cellWidth: CGFloat(32), ozDrank: 64)
                .previewDisplayName("Control")
          MonthCellView(lolwaterDate: LolWaterDate(date: Date(), dateManager: DateManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 0), isDisabled: true, isToday: false, isSelected: false, isBetweenStartAndEnd: false), cellWidth: CGFloat(32), ozDrank: 64)
                .previewDisplayName("Disabled Date")
          MonthCellView(lolwaterDate: LolWaterDate(date: Date(), dateManager: DateManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 0), isDisabled: false, isToday: true, isSelected: false, isBetweenStartAndEnd: false), cellWidth: CGFloat(32), ozDrank: 64)
                .previewDisplayName("Today")
          MonthCellView(lolwaterDate: LolWaterDate(date: Date(), dateManager: DateManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 0), isDisabled: true, isToday: false, isSelected: true, isBetweenStartAndEnd: false), cellWidth: CGFloat(32), ozDrank: 64)
                .previewDisplayName("Selected Date")
            MonthCellView(lolwaterDate: LolWaterDate(date: Date(), dateManager: DateManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 0), isDisabled: false, isToday: false, isSelected: false, isBetweenStartAndEnd: true), cellWidth: CGFloat(32), ozDrank: 64)
                .previewDisplayName("Between Two Dates")
        }
        .previewLayout(.fixed(width: 300, height: 70))
            .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
    }
}
