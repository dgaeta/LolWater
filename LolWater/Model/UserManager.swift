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
  
  @Published var signedIn: Bool = false
  
  var isRegistered: Bool {
    return profile.username.isEmpty == true
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
    clear()
    AWSMobileClient.default().signOut()
    self.profile.username = ""
    self.signedIn = false
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
                
            case .unknown:
                print("Unexpected case")
            }
          
          self.profile.username = username
          self.persistProfile()
          self.signedIn = true
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
  
  func login(username: String, password: String) {
    print("\(username) \(password)")
    AWSMobileClient.default().signIn(username: username, password: password
    ) { (signInResult, error) in
      if let error = error as? AWSMobileClientError {
                      print(error.localizedDescription)
        print("\(AWSMobileClientError.cognitoIdentityPoolNotConfigured(message: error.localizedDescription))")
        var newError = AWSMobileClientError.makeMobileClientError(from: error)
        
        print(newError)
      }
      
        if let error = error  {
            print("\(error.localizedDescription)")
        } else if let signInResult = signInResult {
            switch (signInResult.signInState) {
            case .signedIn:
                print("User is signed in.")
              self.profile.username = username
              self.persistProfile()
              self.signedIn = true
            case .smsMFA:
                print("SMS message sent to \(signInResult.codeDetails!.destination!)")
            default:
                print("Sign In needs info which is not et supported.")
            }
        }
    }
  }
  
  func load() {
    if let data = UserDefaults.standard.value(forKey: "user-profile") as? Data {
      if let profile = try? PropertyListDecoder().decode(Profile.self, from: data) {
        self.profile = profile
        self.signedIn = true
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
