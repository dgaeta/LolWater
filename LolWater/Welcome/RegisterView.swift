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
  @ObservedObject var keyboardHandler: KeyboardFollower
    
  @State private var name: String = ""
  
  private let title = "Welcome to Kuchi"
    
  init(keyboardHandler: KeyboardFollower) {
    self.keyboardHandler = keyboardHandler
  }
  
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
        VStack {
            WelcomeMessageView()
            
            TextField("Type your name...", text: $name)
                .bordered()
                
            Button(action: self.registerUser) {
              HStack {
                Image(systemName: "checkmark")
                  .resizable()
                  .frame(width: 16, height: 16, alignment: .center)
                Text("OK")
                  .font(.body)
                  .bold()
              }
            }
        }
        .padding(.bottom, keyboardHandler.keyboardHeight)
        .padding()
        
        
      }
    }
  }
  
}

#if DEBUG
struct RegisterView_Previews: PreviewProvider {
  static var previews: some View {
    RegisterView(keyboardHandler: KeyboardFollower())
      .environmentObject(User(name: "Ray"))
  }
}
#endif
