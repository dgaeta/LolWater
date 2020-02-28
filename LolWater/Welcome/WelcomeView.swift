//
//  WelcomeView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 2/28/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct WelcomeView {
  
  @EnvironmentObject var user: User
  
  @State private var showHome = false
}

extension WelcomeView: View {
  
  var body: some View {
    Group {
      if showHome {
        HomeView()
      } else {
        VStack {
          Text("Hi, \(user.profile.name)")
            .font(.largeTitle)
          Text("Welcome to Kuchi")
            .font(.title)
          Button(action: {
            self.showHome = true
          }, label: {
            HStack {
              Image(systemName: "play")
              Text("Start")
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
      .environmentObject(User())
  }
}
#endif
