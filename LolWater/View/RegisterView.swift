//
//  RegisterView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 2/28/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI
import AWSMobileClient

struct RegisterView : View {
  @EnvironmentObject var userManager: UserManager
  @ObservedObject var keyboardHandler: KeyboardFollower
  
  @State var username: String = ""
  @State var password: String = ""

  init(keyboardHandler: KeyboardFollower) {
    self.keyboardHandler = keyboardHandler
  }

  var body: some View {
    VStack(content: {
      WelcomeMessageView()
      
      TextField("Type your username...", text: self.$username)
        .bordered()
      
      TextField("Type your new password...", text: self.$password)
      .bordered()

      HStack {
        Spacer()
        Text("\(username.count)")
          .font(.caption)
          .foregroundColor (userManager.isUserNameValid(username: self.username) ? .green : .red)
          .padding(.trailing)
      }
      .padding(.bottom)


      HStack {
        Spacer()
      
        Toggle(isOn: $userManager.settings.rememberUser) {
          Text("Remember me")
            .font(.subheadline)
            .foregroundColor(.gray)
        }
      }

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
      .bordered()
      .disabled(!userManager.isUserNameValid(username: self.username))
    })
      .padding(.bottom, keyboardHandler.keyboardHeight)
      .padding()
  }
}

// MARK: - Event Handlers
extension RegisterView {
  func registerUser() {
    userManager.signUp(username: username,
                       password: password)
  }
}

struct RegisterView_Previews: PreviewProvider {
    static let userManager = UserManager(username: "DanTestX")

  static var previews: some View {
    RegisterView(keyboardHandler: KeyboardFollower())
      .environmentObject(userManager)
  }
}
