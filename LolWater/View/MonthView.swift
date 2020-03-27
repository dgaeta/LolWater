//
//  MonthView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/27/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct MonthView: View {
  @Binding var isPresented: Bool
  
  var dateManager: DateManager
  var monthOffset: Int
  let calendarUnitYMD = Set<Calendar.Component>([.year, .month, .day])
  let daysPerWeek = 7
  var monthsArray: [[Date]] {
      monthArray()
  }
  let cellWidth = CGFloat(32)
  
  
  func numberOfDays(offset : Int) -> Int {
      let firstOfMonth = firstOfMonthForOffset()
      let rangeOfWeeks = dateManager.calendar.range(of: .weekOfMonth, in: .month, for: firstOfMonth)
      
      return (rangeOfWeeks?.count)! * daysPerWeek
  }
  
  func firstOfMonthForOffset() -> Date {
      var offset = DateComponents()
      offset.month = monthOffset
      
      return dateManager.calendar.date(byAdding: offset, to: FirstDateMonth())!
  }
  
  func FormatDate(date: Date) -> Date {
      let components = dateManager.calendar.dateComponents(calendarUnitYMD, from: date)
      
      return dateManager.calendar.date(from: components)!
  }
  
  // MARK: - Date Property Checkers
  
  func isToday(date: Date) -> Bool {
      return FormatAndCompareDate(date: date, referenceDate: Date())
  }
  
  func FormatAndCompareDate(date: Date, referenceDate: Date) -> Bool {
      let refDate = FormatDate(date: referenceDate)
      let clampedDate = FormatDate(date: date)
      return refDate == clampedDate
  }
   
  func isSpecialDate(date: Date) -> Bool {
      return isSelectedDate(date: date) ||
          isStartDate(date: date) ||
          isEndDate(date: date) ||
          isOneOfSelectedDates(date: date)
  }
  
  func isOneOfSelectedDates(date: Date) -> Bool {
      return self.dateManager.selectedDatesContains(date: date)
  }

  func isSelectedDate(date: Date) -> Bool {
      if dateManager.selectedDate == nil {
          return false
      }
      return FormatAndCompareDate(date: date, referenceDate: dateManager.selectedDate)
  }
  
  func isStartDate(date: Date) -> Bool {
      if dateManager.startDate == nil {
          return false
      }
      return FormatAndCompareDate(date: date, referenceDate: dateManager.startDate)
  }
  
  func isEndDate(date: Date) -> Bool {
      if dateManager.endDate == nil {
          return false
      }
      return FormatAndCompareDate(date: date, referenceDate: dateManager.endDate)
  }
  
  func isBetweenStartAndEnd(date: Date) -> Bool {
      if dateManager.startDate == nil {
          return false
      } else if dateManager.endDate == nil {
          return false
      } else if dateManager.calendar.compare(date, to: dateManager.startDate, toGranularity: .day) == .orderedAscending {
          return false
      } else if dateManager.calendar.compare(date, to: dateManager.endDate, toGranularity: .day) == .orderedDescending {
          return false
      }
      return true
  }
  
  func isOneOfDisabledDates(date: Date) -> Bool {
      return self.dateManager.disabledDatesContains(date: date)
  }
  
  func isEnabled(date: Date) -> Bool {
      let clampedDate = FormatDate(date: date)
      if dateManager.calendar.compare(clampedDate, to: dateManager.minimumDate, toGranularity: .day) == .orderedAscending || dateManager.calendar.compare(clampedDate, to: dateManager.maximumDate, toGranularity: .day) == .orderedDescending {
          return false
      }
      return !isOneOfDisabledDates(date: date)
  }
  
  func FirstDateMonth() -> Date {
      var components = dateManager.calendar.dateComponents(calendarUnitYMD, from: dateManager.minimumDate)
      components.day = 1
      
      return dateManager.calendar.date(from: components)!
  }
  
  func getDateAtIndex(index: Int) -> Date {
      let firstOfMonth = firstOfMonthForOffset()
      let weekday = dateManager.calendar.component(.weekday, from: firstOfMonth)
      var startOffset = weekday - dateManager.calendar.firstWeekday
      startOffset += startOffset >= 0 ? 0 : daysPerWeek
      var dateComponents = DateComponents()
      dateComponents.day = index - startOffset
      
      return dateManager.calendar.date(byAdding: dateComponents, to: firstOfMonth)!
  }
  
  func monthArray() -> [[Date]] {
      var rowArray = [[Date]]()
      for row in 0 ..< (numberOfDays(offset: monthOffset) / 7) {
          var columnArray = [Date]()
          for column in 0 ... 6 {
              let abc = self.getDateAtIndex(index: (row * 7) + column)
              columnArray.append(abc)
          }
          rowArray.append(columnArray)
      }
      return rowArray
  }
  
  func getMonthHeader() -> String {
      let headerDateFormatter = DateFormatter()
      headerDateFormatter.calendar = dateManager.calendar
      headerDateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yyyy LLLL", options: 0, locale: dateManager.calendar.locale)
      
      return headerDateFormatter.string(from: firstOfMonthForOffset()).uppercased()
  }
  
  func isThisMonth(date: Date) -> Bool {
      return self.dateManager.calendar.isDate(date, equalTo: firstOfMonthForOffset(), toGranularity: .month)
  }
  
  func isStartDateAfterEndDate() -> Bool {
      if dateManager.startDate == nil {
          return false
      } else if dateManager.endDate == nil {
          return false
      } else if dateManager.calendar.compare(dateManager.endDate, to: dateManager.startDate, toGranularity: .day) == .orderedDescending {
          return false
      }
      return true
  }
  
  func dateTapped(date: Date) {
      if self.isEnabled(date: date) {
          switch self.dateManager.mode {
          case 0:
              if self.dateManager.selectedDate != nil &&
                  self.dateManager.calendar.isDate(self.dateManager.selectedDate, inSameDayAs: date) {
                  self.dateManager.selectedDate = nil
              } else {
                  self.dateManager.selectedDate = date
              }
              self.isPresented = false
          case 1:
              self.dateManager.startDate = date
              self.dateManager.endDate = nil
              self.dateManager.mode = 2
          case 2:
              self.dateManager.endDate = date
              if self.isStartDateAfterEndDate() {
                  self.dateManager.endDate = nil
                  self.dateManager.startDate = nil
              }
              self.dateManager.mode = 1
              self.isPresented = false
          case 3:
              if self.dateManager.selectedDatesContains(date: date) {
                  if let ndx = self.dateManager.selectedDatesFindIndex(date: date) {
                      dateManager.selectedDates.remove(at: ndx)
                  }
              } else {
                  self.dateManager.selectedDates.append(date)
              }
          default:
              self.dateManager.selectedDate = date
              self.isPresented = false
          }
      }
  }
  
  
  
  var body: some View {
      VStack(alignment: HorizontalAlignment.center, spacing: 10){
          Text(getMonthHeader()).foregroundColor(self.dateManager.colors.monthHeaderColor)
          VStack(alignment: .leading, spacing: 5) {
              ForEach(monthsArray, id:  \.self) { row in
                  HStack() {
                      ForEach(row, id:  \.self) { column in
                          HStack() {
                              Spacer()
                              if self.isThisMonth(date: column) {
                                  MonthCellView(lolwaterDate: LolWaterDate(
                                      date: column,
                                      dateManager: self.dateManager,
                                      isDisabled: !self.isEnabled(date: column),
                                      isToday: self.isToday(date: column),
                                      isSelected: self.isSpecialDate(date: column),
                                      isBetweenStartAndEnd: self.isBetweenStartAndEnd(date: column)),
                                      cellWidth: self.cellWidth)
                                      .onTapGesture { self.dateTapped(date: column) }
                              } else {
                                  Text("").frame(width: self.cellWidth, height: self.cellWidth)
                              }
                              Spacer()
                          }
                      }
                  }
              }
          }.frame(minWidth: 0, maxWidth: .infinity)
      }.background(dateManager.colors.monthBackColor)
  }
}

struct MonthView_Previews: PreviewProvider {
    static var previews: some View {
      MonthView(isPresented: .constant(false), dateManager: DateManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 0), monthOffset: 0)
    }
}
