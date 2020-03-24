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
    if settings.rememberUser {
      UserDefaults.standard.set(try? PropertyListEncoder().encode(profile), forKey: "user-profile")
    }
  }
  
  func load() {
    if let data = UserDefaults.standard.value(forKey: "user-profile") as? Data {
      if let profile = try? PropertyListDecoder().decode(Profile.self, from: data) {
        self.profile = profile
      }
    }
  }
  
  func clear() {
    UserDefaults.standard.removeObject(forKey: "user-profile")
  }
  
  func isUserNameValid() -> Bool {
    return profile.username.count >= 3
  }
}
