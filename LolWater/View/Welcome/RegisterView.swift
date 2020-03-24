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
  
  func isUsernameAndPasswordValid() -> Bool {
    return username.count >= 3 && password.count >= 8
  }

  func signUp() {
    AWSMobileClient.default().signUp(username: self.username, password: self.password
    ) { (signUpResult, error) in
        if let signUpResult = signUpResult {
            switch(signUpResult.signUpConfirmationState) {
            case .confirmed:
                print("User is signed up and confirmed.")
            case .unconfirmed:
                self.registerUser()
                print("User is not confirmed and no verification is set up at the moment:  \(signUpResult).")
            case .unknown:
                print("Unexpected case")
            }
        } else if let error = error {
            if let error = error as? AWSMobileClientError {
                switch(error) {
                case .usernameExists(let message):
                    print(message)
                default:
                    break
                }
            }
            print("\(error.localizedDescription)")
        }
    }

  }
  
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
          .foregroundColor(isUsernameAndPasswordValid() ? .green : .red)
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

      Button(action: self.signUp) {
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
      .disabled(!isUsernameAndPasswordValid())
    })
      .padding(.bottom, keyboardHandler.keyboardHeight)
      .padding()
  }
}

// MARK: - Event Handlers
extension RegisterView {
  func registerUser() {
    if userManager.settings.rememberUser {
      userManager.profile.username = self.username
      userManager.persistProfile()
    } else {
      userManager.clear()
    }
  }
}

struct RegisterView_Previews: PreviewProvider {
    static let userManager = UserManager(username: "DanTestX")

  static var previews: some View {
    RegisterView(keyboardHandler: KeyboardFollower())
      .environmentObject(userManager)
  }
}
