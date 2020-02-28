//
//  RegisterView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 2/28/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct RegisterView {
  
  @EnvironmentObject var user: User
  
  @State private var name: String = ""
  
  private let title = "Welcome to Kuchi"
  
  func registerUser() {
    if name.isEmpty == false {
        user.profile = Profile(username: "", name: name)
      user.isRegistered = true
    }
  }
}

extension RegisterView: View {
  
  var body: some View {
    
    Group {
      if user.isRegistered {
        WelcomeView()
      } else {
        Text(title)
          .font(.title)
          .animation(.spring())
        TextField("Enter your name", text: $name)
          .multilineTextAlignment(.center)
        Button(action: {
          self.registerUser()
        }) {
          HStack {
            Image(systemName: "checkmark.circle")
            Text("OK")
          }
        }
      }
    }
  }
  
}

#if DEBUG
struct RegisterView_Previews: PreviewProvider {
  static var previews: some View {
    RegisterView()
      .environmentObject(User(name: "Ray"))
  }
}
#endif
