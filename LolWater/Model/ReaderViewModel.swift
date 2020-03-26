//
//  ReaderViewModel.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/19/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI
import Combine
import Foundation
import AWSAppSync
import AWSMobileClient


class ReaderViewModel: ObservableObject {
  // Reference AppSync client
  var appSyncClient: AWSAppSyncClient?
  
  private let api = NetworkAPI()
  let userName = "DanTest5"
  let todayDate = "2020-03-24"
  @Published var lastSavedOzDrank = 0
  @Published var todayDay: Day = Day(id: "", date: "", weekday: "Today", ozDrank: 0)
  var todaysCurrentOzDrank = 0
  @Published private var daysMap: [String: Day] = [String: Day]()
  @Published private var allDays = [
    Day(id: "DanTest5_2020-03-18", date: "2020-03-18", weekday: "Sunday", ozDrank: 8),
    Day(id: "DanTest5_2020-03-19", date: "2020-03-19", weekday: "Monday", ozDrank: 64),
    Day(id: "DanTest5_2020-03-20", date: "2020-03-20", weekday: "Tuesday", ozDrank: 16),
    Day(id: "DanTest5_2020-03-21", date: "2020-03-21", weekday: "Wednesdday", ozDrank: 48),
    Day(id: "DanTest5_2020-03-22", date: "2020-03-22", weekday: "Thursday", ozDrank: 80),
    Day(id: "DanTest5_2020-03-23", date: "2020-03-23", weekday: "Friday", ozDrank: 55),
    Day(id: "DanTest5_2020-03-24", date: "2020-03-24", weekday: "Saturday", ozDrank: 60)
  ]
  private var subscriptions = Set<AnyCancellable>()
  
  @Published var error: NetworkAPI.Error? = nil
  
  var days: [Day] {
    return allDays
  }
  
  var mapOfDays: [String: Day] {
    return daysMap
  }
  
  init() {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    appSyncClient = appDelegate.appSyncClient
  }
  
  func increaseTodaysOzDrank() {
    self.todayDay.ozDrank += 1
    print("increase iieiei")
    print("\(self.todayDay.ozDrank)")
  }
  
  func decreaseTodaysOzDrank() {
    if self.todayDay.ozDrank > 0 {
      self.todayDay.ozDrank -= 1
    }
  }
  
  func runQuery(userId: String!) {
    print("Query for id: \(userId)")
    appSyncClient?.fetch(query: GetWaterDataQuery(userId: userId), cachePolicy: .returnCacheDataAndFetch) {(result, error) in
          if error != nil {
              print(error?.localizedDescription ?? "")
              return
          }
          print("Query complete.")
          print("\(String(describing: result?.data))")
     
      
      if ((result?.data?.getWaterData?.items?.count) != 0)  {
        result?.data?.getWaterData?.items?.forEach { print($0.debugDescription)
          let receivedDay = Day(id: $0!.id, date: $0!.date, weekday:  "Today", ozDrank: $0!.ozDrank!)
          self.todayDay = receivedDay
          self.daysMap[$0!.date] = receivedDay
          self.lastSavedOzDrank = $0!.ozDrank!
        }
        print("not empty")
      } else {
        print("empty")
      }
    }
  }
  
  func runMutation(username: String!){
    let idCombo = username + "-" + todayDate
    self.todayDay = Day(id: idCombo, date: todayDate, weekday: "Today", ozDrank: 0)
    let mutationInput = CreateLolWaterDayDataInput(id: idCombo, userId: username, date: todayDate, ozDrank: 0)
    
      appSyncClient?.perform(mutation: CreateLolWaterDayDataMutation(input: mutationInput)) { (result, error) in
          if let error = error as? AWSAppSyncClientError {
              print("Error occurred: \(error.localizedDescription )")
          }
          if let resultError = result?.errors {
              print("Error saving the item on server: \(resultError)")
              return
          }
        
          print("Mutation complete.")
        self.runQuery(userId: username)
      }
  }
  
  func runUpdate(userId: String!) {
    let mutationInput = UpdateLolWaterDayDataInput(id: todayDay.id, userId: userId, date: todayDay.date, ozDrank: todayDay.ozDrank)
    print("Date \(mutationInput.date)")
    print("ozDrank \(mutationInput.ozDrank)")
    print("id \(mutationInput.id)")
    print("userId \(mutationInput.userId)")
    
      appSyncClient?.perform(mutation: UpdateLolWaterDayDataMutation(input: mutationInput)) { (result, error) in
          if let error = error as? AWSAppSyncClientError {
              print("Error occurred: \(error.localizedDescription )")
          }
          if let resultError = result?.errors {
              print("Error saving the item on server: \(resultError)")
              return
          }
        
          print("Mutation complete.")
          self.lastSavedOzDrank = self.todayDay.ozDrank
      }
  }

  func fetchDays() {
    api
      .days()
      .receive(on: DispatchQueue.main)
      .sink(receiveCompletion: { completion in
        if case .failure(let error) = completion {
          self.error = error
        }
      }, receiveValue: { days in
        self.allDays = days
        self.error = nil
      })
      .store(in: &subscriptions)
  }
}
