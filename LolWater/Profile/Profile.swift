//
//  SwiftUIView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 1/2/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

/*
See LICENSE folder for this sample’s licensing information.

Abstract:
An object that models a user profile.
*/
import Foundation

struct Profile : Codable {
    var username: String
    var prefersNotifications: Bool
    var goalDate: Date
    var name: String
    
    static let `default` = Self(username: "username", prefersNotifications: true, name: "")
    
    init() {
      self.username = ""
      self.name = ""
      self.prefersNotifications = false
      self.goalDate = Date()
    }
    
    init(username: String, prefersNotifications: Bool = true, name: String) {
        self.username = username
        self.prefersNotifications = prefersNotifications
        self.goalDate = Date()
        self.name = ""
    }
}
