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
  @State var todayWaterData: Day = Day(id: "", date: "", weekday: "", ozDrank: 0)
  @State var currentDate = Date()
  @State var days: [String: Day] = [String: Day]()
  
  
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
     
      
      if ((result?.data?.getWaterData?.items?.count) != 0)  {
        result?.data?.getWaterData?.items?.forEach { print($0.debugDescription)
          let receivedDay = Day(id: $0!.id, date: $0!.date, weekday:  "Today", ozDrank: $0!.ozDrank!)
          self.days.updateValue(receivedDay, forKey: $0!.date)
          if self.days[self.today] != nil {
            self.todayWaterData = self.days[self.today]!
          }
        }
        print("not empty")
      } else {
        print("empty")
        // CREATES EMPTY RECORD FOR TODAY
        self.runMutation()
      }
    }
  }
  
  func runMutation(){
    let idCombo = userViewModel.profile.username + "-" + self.today
    self.todayWaterData = Day(id: idCombo, date: self.today, weekday: "Today", ozDrank: 0)
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
  
  func increaseTodaysOzDrank() {
    self.todayWaterData.ozDrank += 1
  }
  
  func decreaseTodaysOzDrank() {
    if self.todayWaterData.ozDrank > 0 {
      self.todayWaterData.ozDrank -= 1
    }
  }
    var body: some View {
        
      return NavigationView {
        VStack {
          
          // Switch between Day, Week, Month, Year view
          Section(header: Text("LolWater haha").padding(.leading, -10)) {
            
            HStack {
              DayView(day: todayWaterData)
              TimeButtonDrawerView()
            }
            
          }.padding()
          
          HStack {
            DecreaseButtonView(action: decreaseTodaysOzDrank)
            IncreaseButtonView(action: increaseTodaysOzDrank)
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
