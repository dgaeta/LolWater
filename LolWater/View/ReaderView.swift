//
//  ReaderView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/18/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI
import AWSAppSync

struct ReaderView: View {
  @Environment(\.colorScheme) var colorScheme: ColorScheme
  @EnvironmentObject var settings: Settings
  @State var presentingSettingsSheet = false
  
  @ObservedObject var model: ReaderViewModel
  
  @State var currentDate = Date()
  
  // Reference AppSync client
  var appSyncClient: AWSAppSyncClient?

  init(model: ReaderViewModel) {
    self.model = model
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    appSyncClient = appDelegate.appSyncClient
    runQuery()
  }
  
  func runQuery(){
      appSyncClient?.fetch(query: ListLolWaterDayDataQuery(), cachePolicy: .returnCacheDataAndFetch) {(result, error) in
          if error != nil {
              print(error?.localizedDescription ?? "")
              return
          }
          print("Query complete.")
        result?.data?.listLolWaterDayData?.items!.forEach { print(($0?.date)! + " " + ($0?.userId)!) }
      }
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
