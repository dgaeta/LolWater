//
//  WelcomeView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 2/28/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    @EnvironmentObject var userManager: UserManager
    @State var showHome = false

    @ViewBuilder
    var body: some View {
      NavigationView {
          if showHome {
            HomeView()
          } else {
              VStack {
                Text(verbatim: "Hi, \(userManager.profile.name)")

                WelcomeMessageView()
                
                Button(action: {
                  self.showHome = true
                }, label: {
                  HStack {
                    Image(systemName: "play")
                    Text(verbatim: "Start")
                  }
                })
              }
          }
    }
  }
}

#if DEBUG
struct WelcomeView_Previews: PreviewProvider {
  static var previews: some View {
    WelcomeView()
      .environmentObject(UserManager())
  }
}
#endif
