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
    var body: some View {
        
      return NavigationView {
        VStack {
          
          // Switch between Day, Week, Month, Year view
          Section(header: Text("LolWater haha").padding(.leading, -10)) {
            
            HStack {
              DayView(day: self.model.days[0])
              TimeButtonDrawerView()
            }
            
          }.padding()
          
          HStack {
            DecreaseButtonView()
            IncreaseButtonView()
          }

          
          
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
