//
//  StarterView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 2/28/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI
import AWSMobileClient

struct StarterView: View {
  @EnvironmentObject var userViewModel: UserManager
  
  @State var isSignedIn = false
//
  func checkUserState() {
    AWSMobileClient.default().initialize { (userState, error) in
        if let userState = userState {
            switch(userState){
            case .signedIn:
              print("Signed In")
              self.isSignedIn = true
            case .signedOut:
              print("Signed Out")
              self.isSignedIn = false
            default:
                AWSMobileClient.default().signOut()
              self.isSignedIn = false
            }

        } else if let error = error {
            print(error.localizedDescription)
        }
    }
  }
  
  init() {
    checkUserState()
  }
  
  var body: some View {
    Group {
      if self.userViewModel.isRegistered || self.isSignedIn {
          ReaderView(model: ReaderViewModel(), userViewModel: userViewModel)
      } else {
        RegisterView(keyboardHandler: KeyboardFollower())
      }
    }
  }
}

struct StarterView_Previews: PreviewProvider {
  static var previews: some View {
    StarterView()
      .environmentObject(UserManager())
  }
}
