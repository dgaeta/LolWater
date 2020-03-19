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
  
  let calendar = Calendar.current

  init(model: ReaderViewModel) {
    self.model = model
  }
  
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
        
      return NavigationView {
        List {
          
          // days
          Section(header: Text("LolWater haha").padding(.leading, -10)) {
            ScrollView(.horizontal, content: {
                HStack(spacing: 10) {
                    ForEach(self.model.days) { day in
                      VStack {
                        Text(self.getWeekdayName(day: day))
                          .font(.caption)
                        Text(self.getDateNumber(day: day))
                        WaterRowView(day: day)
                        PersonSymbolView(day: day)
                      }
                    }
                }
                .padding(.leading, 10)
            })
            .frame(height: 300)
            
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
