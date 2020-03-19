//
//  ReaderView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/18/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct ReaderView: View {
  @Environment(\.colorScheme) var colorScheme: ColorScheme
  @EnvironmentObject var settings: Settings
  @State var presentingSettingsSheet = false
  
  @ObservedObject var model: ReaderViewModel
  
  @State var currentDate = Date()

  init(model: ReaderViewModel) {
    self.model = model
  }
  
  func getDayDate(day: Day) -> String {
    let calendar = Calendar.current
    let year = calendar.component(.year, from: day.date)
    let month = calendar.component(.month, from: day.date)
    let dayNumber = calendar.component(.day, from: day.date)
    let index = Calendar.current.component(.weekday, from: day.date) // this returns an Int
    let weekdayName = Calendar.current.weekdaySymbols[index - 1] // subtract 1 since the index starts at 1
    return "\(weekdayName) \(month)/\(dayNumber)"
  }

  
    var body: some View {
        
      return NavigationView {
        List {
          Section(header: Text("LolWater haha").padding(.leading, -10)) {
            ForEach(self.model.days) { day in
              HStack(alignment: .center, spacing: 10) {
                Text(self.getDayDate(day: day))
                WaterRowView(day: day)
                PersonSymbolView(day: day)
              }
              .padding()
            }
          }.padding()
        }
        .sheet(isPresented: self.$presentingSettingsSheet, content: {
          SettingsView() 
            .environmentObject(self.settings)
        })
      }
    }
}

struct ReaderView_Previews: PreviewProvider {
  static var previews: some View {
    ReaderView(model: ReaderViewModel())
  }
}
