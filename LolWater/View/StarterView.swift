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
  
  var body: some View {
    Group {
      if self.userViewModel.isRegistered {
        ReaderView(userViewModel: userViewModel)
          
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
