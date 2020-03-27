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
    
    var body: some View {
        Text(lolwaterDate.getText())
            .fontWeight(lolwaterDate.getFontWeight())
            .foregroundColor(lolwaterDate.getTextColor())
            .frame(width: cellWidth, height: cellWidth)
            .font(.system(size: 20))
            .background(lolwaterDate.getBackgroundColor())
            .cornerRadius(cellWidth/2)
    }
}

struct MonthCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MonthCellView(lolwaterDate: LolWaterDate(date: Date(), dateManager: DateManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 0), isDisabled: false, isToday: false, isSelected: false, isBetweenStartAndEnd: false), cellWidth: CGFloat(32))
                .previewDisplayName("Control")
            MonthCellView(lolwaterDate: LolWaterDate(date: Date(), dateManager: DateManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 0), isDisabled: true, isToday: false, isSelected: false, isBetweenStartAndEnd: false), cellWidth: CGFloat(32))
                .previewDisplayName("Disabled Date")
            MonthCellView(lolwaterDate: LolWaterDate(date: Date(), dateManager: DateManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 0), isDisabled: false, isToday: true, isSelected: false, isBetweenStartAndEnd: false), cellWidth: CGFloat(32))
                .previewDisplayName("Today")
          MonthCellView(lolwaterDate: LolWaterDate(date: Date(), dateManager: DateManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 0), isDisabled: false, isToday: false, isSelected: true, isBetweenStartAndEnd: false), cellWidth: CGFloat(32))
                .previewDisplayName("Selected Date")
            MonthCellView(lolwaterDate: LolWaterDate(date: Date(), dateManager: DateManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 0), isDisabled: false, isToday: false, isSelected: false, isBetweenStartAndEnd: true), cellWidth: CGFloat(32))
                .previewDisplayName("Between Two Dates")
        }
        .previewLayout(.fixed(width: 300, height: 70))
            .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
    }
}
