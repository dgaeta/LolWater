//
//  UserManager.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/2/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import Combine
import SwiftUI
import Foundation
import AWSMobileClient

final class UserManager: ObservableObject {
  @Published var profile: Profile = Profile(username: "")
  @Published var settings: Settings = Settings()
  
  var isRegistered: Bool {
    return profile.username.isEmpty == false
  }
  
  init() {
  }
  
  init(username: String) {
    self.profile.username = username
  }
  
  func persistProfile() {
    UserDefaults.standard.set(try? PropertyListEncoder().encode(profile), forKey: "user-profile")
  }
  
  func signOut() {
    AWSMobileClient.default().signOut()
    self.profile.username = ""
    clear()
  }
  
  func signUp(username: String, password: String) {
    AWSMobileClient.default().signUp(username: username, password: password
    ) { (signUpResult, error) in
        if let signUpResult = signUpResult {
            switch(signUpResult.signUpConfirmationState) {
            case .confirmed:
                print("User is signed up and confirmed.")
            case .unconfirmed:
                
                print("User is not confirmed and no verification is set up at the moment:  \(signUpResult).")
                self.profile.username = username
                self.persistProfile()
            case .unknown:
                print("Unexpected case")
            }
        } else if let error = error {
          print("ERROR ON SIGNUP")
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
  
  func load() {
    if let data = UserDefaults.standard.value(forKey: "user-profile") as? Data {
      if let profile = try? PropertyListDecoder().decode(Profile.self, from: data) {
        self.profile = profile
        print(profile)
      }
    }
  }
  
  func clear() {
    UserDefaults.standard.removeObject(forKey: "user-profile")
  }
  
  func isUserNameValid(username: String) -> Bool {
    return username.count >= 3
  }
}
