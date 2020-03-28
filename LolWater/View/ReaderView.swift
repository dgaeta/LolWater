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
  @ObservedObject var readerViewModel: ReaderViewModel
  @EnvironmentObject var settings: Settings
  var userViewModel: UserManager
  @State var showingProfileSheet = false
  
  var today = "2020-03-24"
  
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

  init(userViewModel: UserManager) {
    self.userViewModel = userViewModel
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    appSyncClient = appDelegate.appSyncClient
    self.readerViewModel = ReaderViewModel()
    self.readerViewModel.runQuery(userId: userViewModel.profile.username)
  }
  
  var body: some View {
      
    return
      NavigationView {
      VStack {
        
        Section() {
          
          HStack {
            DayView(ozDrank: self.readerViewModel.todayDay.ozDrank)
            
            Text("Oz drank: \(self.readerViewModel.todayDay.ozDrank)")
          }
          
        }.padding([.top], 90)
        
        Button(action: { self.readerViewModel.runUpdate(userId: self.userViewModel.profile.username)} ) {
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
        .disabled(self.readerViewModel.lastSavedOzDrank == self.readerViewModel.todayDay.ozDrank)
        
        HStack {
          DecreaseButtonView(action: self.readerViewModel.decreaseTodaysOzDrank)
          IncreaseButtonView(action: self.readerViewModel.increaseTodaysOzDrank)
        }

        
        
      }
      .navigationBarTitle(Text("LolWater"))
      .navigationBarItems(trailing: profileButton)
      .sheet(isPresented: self.$showingProfileSheet, content: {
        ProfileSummary(
          readerViewModel: self.readerViewModel,
          profile: Profile(),
          userViewModel: self.userViewModel)
      })
    }
  }

  
  func getOz() -> Int {
    if self.readerViewModel.days.index(forKey: today) != nil {
      return self.readerViewModel.days[today]!.ozDrank
    } else {
      return 0
    }
  }
}

struct ReaderView_Previews: PreviewProvider {
  static var previews: some View {
    ReaderView(userViewModel: UserManager())
    .environmentObject(ReaderViewModel())
  }
}
