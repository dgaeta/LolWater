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
  @State var showingProfileSheet = false
  
  var today = "2020-03-24"
  @ObservedObject var model: ReaderViewModel
  
  // Reference AppSync client
  var appSyncClient: AWSAppSyncClient?
  
  var profileButton: some View {
      Button(action: { self.showingProfileSheet.toggle() }) {
          Image(systemName: "person.crop.circle")
              .imageScale(.large)
              .accessibility(label: Text("User Profile"))
              .padding()
      }
  }

  init(model: ReaderViewModel, userViewModel: UserManager) {
    self.model = model
    self.userViewModel = userViewModel
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    appSyncClient = appDelegate.appSyncClient
    self.model.runQuery(userId: userViewModel.profile.username)
  }

  
  func getOz() -> Int {
    if self.model.mapOfDays.index(forKey: today) != nil {
      return self.model.mapOfDays[today]!.ozDrank
    } else {
      return 0
    }
  }
  
    var body: some View {
        
      return
        NavigationView {
        VStack {
          
          // Switch between Day, Week, Month, Year view
          Section() {
            
            HStack {
              DayView(ozDrank: self.model.todayDay.ozDrank)
              
              // TimeButtonDrawerView()
              Text("Oz drank: \(self.model.todayDay.ozDrank)")
            }
            
          }.padding([.top], 90)
          
          Button(action: { self.model.runUpdate(userId: self.userViewModel.profile.username)} ) {
            HStack {
              Image(systemName: "icloud.fill")
                .resizable()
                .frame(width: 16, height: 16, alignment: .center)
              Text("save")
                .font(.body)
                .bold()
            }
          }
          .bordered()
          .disabled(self.model.lastSavedOzDrank == self.model.todayDay.ozDrank)
          
          HStack {
            DecreaseButtonView(action: self.model.decreaseTodaysOzDrank)
            IncreaseButtonView(action: self.model.increaseTodaysOzDrank)
          }

          
          
        }
        .navigationBarTitle(Text("LolWater"))
        .navigationBarItems(trailing: profileButton)
        .sheet(isPresented: self.$showingProfileSheet, content: {
          ProfileSummary(profile: Profile(), userViewModel: self.userViewModel, readerViewModel: self.model)
        })
      }
    }
}

struct ReaderView_Previews: PreviewProvider {
  static var previews: some View {
    ReaderView(model: ReaderViewModel(), userViewModel: UserManager())
  }
}
