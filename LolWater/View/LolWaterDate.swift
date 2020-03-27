//
//  LolWaterDate.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/27/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct LolWaterDate {
    
    var date: Date
    let dateManager: DateManager
    
    var isDisabled: Bool = false
    var isToday: Bool = false
    var isSelected: Bool = false
    var isBetweenStartAndEnd: Bool = false
    
    init(date: Date, dateManager: DateManager, isDisabled: Bool, isToday: Bool, isSelected: Bool, isBetweenStartAndEnd: Bool) {
        self.date = date
        self.dateManager = dateManager
        self.isDisabled = isDisabled
        self.isToday = isToday
        self.isSelected = isSelected
        self.isBetweenStartAndEnd = isBetweenStartAndEnd
    }
    
    func getText() -> String {
        let day = formatDate(date: date, calendar: self.dateManager.calendar)
        return day
    }
    
    func getTextColor() -> Color {
        var textColor = dateManager.colors.textColor
        if isDisabled {
            textColor = dateManager.colors.disabledColor
        } else if isSelected {
            textColor = dateManager.colors.selectedColor
        } else if isToday {
            textColor = dateManager.colors.todayColor
        } else if isBetweenStartAndEnd {
            textColor = dateManager.colors.betweenStartAndEndColor
        }
        return textColor
    }
    
    func getBackgroundColor() -> Color {
        var backgroundColor = dateManager.colors.textBackColor
        if isBetweenStartAndEnd {
            backgroundColor = dateManager.colors.betweenStartAndEndBackColor
        }
        if isToday {
            backgroundColor = dateManager.colors.todayBackColor
        }
        if isDisabled {
            backgroundColor = dateManager.colors.disabledBackColor
        }
        if isSelected {
            backgroundColor = dateManager.colors.selectedBackColor
        }
        return backgroundColor
    }
    
    func getFontWeight() -> Font.Weight {
        var fontWeight = Font.Weight.medium
        if isDisabled {
            fontWeight = Font.Weight.thin
        } else if isSelected {
            fontWeight = Font.Weight.heavy
        } else if isToday {
            fontWeight = Font.Weight.heavy
        } else if isBetweenStartAndEnd {
            fontWeight = Font.Weight.heavy
        }
        return fontWeight
    }
    
    // MARK: - Date Formats
    
    func formatDate(date: Date, calendar: Calendar) -> String {
        let formatter = dateFormatter()
        return stringFrom(date: date, formatter: formatter, calendar: calendar)
    }
    
    func dateFormatter() -> DateFormatter {
        let formatter = DateFormatter()
        formatter.locale = .current
        formatter.dateFormat = "d"
        return formatter
    }
    
    func stringFrom(date: Date, formatter: DateFormatter, calendar: Calendar) -> String {
        if formatter.calendar != calendar {
            formatter.calendar = calendar
        }
        return formatter.string(from: date)
    }
}
