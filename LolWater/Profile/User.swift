//
//  User.swift
//  LolWater
//
//  Created by Daniel Gaeta on 2/28/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import Combine

final internal class User {
  
  @Published var isRegistered: Bool = false
  
    var profile: Profile = Profile(username: "", name: "") {
    willSet {
      willChange.send(self)
    }
  }
  
  internal let willChange = PassthroughSubject<User, Never>()
  
  init() {
    self.profile.name = ""
  }
  
  init(name: String) {
    self.profile.name = name
  }
}
