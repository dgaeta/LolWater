//
//  StarterView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 2/28/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct StarterView {
  
  @EnvironmentObject var user: User
}

extension StarterView: View {
  
  var body: some View {
    Group {
      if self.user.isRegistered {
        WelcomeView()
      } else {
        RegisterView(keyboardHandler: KeyboardFollower())
      }
    }
  }
  
}

#if DEBUG
struct StarterView_Previews: PreviewProvider {
  static var previews: some View {
    StarterView()
      .environmentObject(User())
  }
}
#endif
