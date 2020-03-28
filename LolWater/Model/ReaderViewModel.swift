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
  @Published var lastSavedOzDrank = 0
  @Published var todayDay: Day = Day(id: "", date: "", weekday: "Today", ozDrank: 0)
  @Published var error: NetworkAPI.Error? = nil
  
  @Published private var allDays: [String: Day] = [String: Day]() {
    didSet {
      print(allDays.debugDescription)
    }
  }
  

  var days: [String: Day] {
    return allDays
  }
  
  // Reference AppSync client
  var appSyncClient: AWSAppSyncClient?
  
  // Time
  let dateFormatter = DateFormatter()
  var todaysDateIsoFormat: String?
  var earliestDayRecordISO: String?
  var earliestDayRecord: Date?
  
  var todaysCurrentOzDrank = 0
  
  private var subscriptions = Set<AnyCancellable>()

  
  
  init() {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    appSyncClient = appDelegate.appSyncClient
    todaysDateIsoFormat = getISOFormat(date : Date())
    earliestDayRecord = Date()
    earliestDayRecordISO = todaysDateIsoFormat
  }
  
  func getDateFromISOFormat(isoFormat: String) -> Date {
    dateFormatter.dateFormat = "yyyy/MM/dd HH:mm"
    
    let dateParts: Array<Substring> = isoFormat.split(separator: "-")
    let someDateTime = dateFormatter.date(from: "\(dateParts[0])/\(dateParts[1])/\(dateParts[2]) 23:59")
    return someDateTime!
    
  }
  
  func getOzFromDate(date: Date) -> Int {
    print("Getting oz for date: \(date)")
    let isoFormatId = getISOFormat(date: date)
    if self.allDays[isoFormatId] != nil {
      print("Found \(self.allDays[isoFormatId])")
      print("\(self.allDays)")
      return self.allDays[isoFormatId]!.ozDrank
    } else {
      print("found nothing")
      print("\(self.allDays)")
      return 0
    }
    
  }
  
  func getISOFormat(date: Date) -> String {
    let calendar = Calendar.current
    let components = calendar.dateComponents([.year, .month, .day], from: date)
    return "\(components.year!)-\(String(describing: components.month!))-\(components.day!)"
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
    print("Query for id: \(userId!)")
    appSyncClient?.fetch(query: GetWaterDataQuery(userId: userId!), cachePolicy: .returnCacheDataAndFetch) {(result, error) in
          if error != nil {
              print(error?.localizedDescription ?? "")
              return
          }
          print("Query complete.")
          print("\(String(describing: result?.data))")
     
      if ((result?.data?.getWaterData?.items?.count) != 0)  {
        result?.data?.getWaterData?.items?.forEach { print($0.debugDescription)
          let receivedDay = Day(id: $0!.id, date: $0!.date, weekday:  "Today", ozDrank: $0!.ozDrank!)
          
          if receivedDay.date < self.earliestDayRecordISO! {
            self.earliestDayRecordISO = receivedDay.date
            self.earliestDayRecord = self.getDateFromISOFormat(isoFormat: receivedDay.date)
          }
          self.todayDay = receivedDay
          self.allDays[$0!.date] = receivedDay
          self.lastSavedOzDrank = $0!.ozDrank!
        }
        print("not empty")
      } else {
        print("empty")
      }
    }
  }
  
  func runMutation(username: String!){
    let idCombo = getIdCombo(username: username)
    self.todayDay = Day(id: idCombo, date: self.todaysDateIsoFormat!, weekday: "Today", ozDrank: 0)
    let mutationInput = CreateLolWaterDayDataInput(id: idCombo, userId: username, date: self.todaysDateIsoFormat!, ozDrank: 0)
    
      appSyncClient?.perform(mutation: CreateLolWaterDayDataMutation(input: mutationInput)) { (result, error) in
          if let error = error as? AWSAppSyncClientError {
              print("Error occurred: \(error.localizedDescription )")
          }
          if let resultError = result?.errors {
              print("Error saving the item on server: \(resultError)")
              return
          }
        
          print("Mutation complete.")
      }
  }
  
  func getIdCombo(username: String) -> String {
    let idCombo = username + "-" + self.todaysDateIsoFormat!
    return idCombo
  }
  
  func runUpdate(userId: String!) {
    let idCombo = self.getIdCombo(username: userId)
    let mutationInput = UpdateLolWaterDayDataInput(id: idCombo, userId: userId, date: todayDay.date, ozDrank: todayDay.ozDrank)
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
        
        print("Mutation complete for: \(idCombo) - \(self.todayDay.ozDrank)")
        let isoFormatKey = self.getISOFormat(date: Date())
        self.allDays[isoFormatKey] = self.todayDay
        self.lastSavedOzDrank = self.todayDay.ozDrank
      }
  }
}
