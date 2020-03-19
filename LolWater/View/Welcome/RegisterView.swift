//
//  RegisterView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 2/28/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct RegisterView : View {
  @EnvironmentObject var userManager: UserManager
  @ObservedObject var keyboardHandler: KeyboardFollower

  init(keyboardHandler: KeyboardFollower) {
    self.keyboardHandler = keyboardHandler
  }

  var body: some View {
    VStack(content: {
      WelcomeMessageView()
      
      TextField("Type your name...", text: $userManager.profile.name)
        .bordered()

      HStack {
        Spacer()
        Text("\(userManager.profile.name.count)")
          .font(.caption)
          .foregroundColor(userManager.isUserNameValid() ? .green : .red)
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
      .disabled(!userManager.isUserNameValid())
    })
      .padding(.bottom, keyboardHandler.keyboardHeight)
      .padding()
  }
}

// MARK: - Event Handlers
extension RegisterView {
  func registerUser() {
    if userManager.settings.rememberUser {
      userManager.persistProfile()
    } else {
      userManager.clear()
    }
  }
}

struct RegisterView_Previews: PreviewProvider {
    static let userManager = UserManager(name: "Dan")

  static var previews: some View {
    RegisterView(keyboardHandler: KeyboardFollower())
      .environmentObject(userManager)
  }
}
