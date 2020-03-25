//
//  ReaderView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/18/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI
import AWSAppSync
import AWSMobileClient

struct ReaderView: View {
  @Environment(\.colorScheme) var colorScheme: ColorScheme
  @EnvironmentObject var settings: Settings
  var userViewModel: UserManager
  @State var presentingSettingsSheet = false
  private let decoder = JSONDecoder()
  
  var today = "2020-03-24"
  @ObservedObject var model: ReaderViewModel
  @State var dayData: Day = Day(id: "", date: "", weekday: "", ozDrank: 0)
  @State var currentDate = Date()
  
  
  // Reference AppSync client
  var appSyncClient: AWSAppSyncClient?

  init(model: ReaderViewModel, userViewModel: UserManager) {
    self.model = model
    self.userViewModel = userViewModel
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    appSyncClient = appDelegate.appSyncClient
    runQuery()
    //runMutation()
  }
  
  func runQuery() {
    let userId = userViewModel.profile.username
    print("Query for id: \(userId)")
    appSyncClient?.fetch(query: GetWaterDataQuery(userId: userId), cachePolicy: .returnCacheDataAndFetch) {(result, error) in
          if error != nil {
              print(error?.localizedDescription ?? "")
              return
          }
          print("Query complete.")
          print("\(String(describing: result?.data))")
     
      
      if ((result?.data?.getWaterData) != nil)  {
        print("not nil")
      } else {
        print("nil")
        // CREATES EMPTY RECORD FOR TODAY
        self.runMutation()
      }
    }
  }
  
  func runMutation(){
    let idCombo = userViewModel.profile.username + "-" + self.today
    self.dayData = Day(id: idCombo, date: self.today, weekday: "Today", ozDrank: 0)
    let mutationInput = CreateLolWaterDayDataInput(id: idCombo, userId: userViewModel.profile.username, date: self.today, ozDrank: 0)
    
      appSyncClient?.perform(mutation: CreateLolWaterDayDataMutation(input: mutationInput)) { (result, error) in
          if let error = error as? AWSAppSyncClientError {
              print("Error occurred: \(error.localizedDescription )")
          }
          if let resultError = result?.errors {
              print("Error saving the item on server: \(resultError)")
              return
          }
        
          print("Mutation complete.")
        self.runQuery()
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
    ReaderView(model: ReaderViewModel(), userViewModel: UserManager())
  }
}
