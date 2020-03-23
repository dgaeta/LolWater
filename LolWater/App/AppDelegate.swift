//
//  AppDelegate.swift
//  LolWater
//
//  Created by Daniel Gaeta on 12/28/19.
//  Copyright © 2019 Daniel Gaeta. All rights reserved.
//

import UIKit
import AWSAppSync

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    let defaultSession = URLSession(configuration: .default)
    var dataTask: URLSessionDataTask?
    var errorMessage = ""
    typealias JSONDictionary = [String: Any]
  
  var appSyncClient: AWSAppSyncClient?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        loadData()
      
      do {
          // You can choose the directory in which AppSync stores its persistent cache databases
          let cacheConfiguration = try AWSAppSyncCacheConfiguration()

          // AppSync configuration & client initialization
          let appSyncServiceConfig = try AWSAppSyncServiceConfig()
          let appSyncConfig = try AWSAppSyncClientConfiguration(appSyncServiceConfig: appSyncServiceConfig,
                                                                cacheConfiguration: cacheConfiguration)
          appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
          print("Initialized appsync client.")
      } catch {
          print("Error initializing appsync client. \(error)")
      }
      
        return true
    }
    
    // MARK: Load Data
    func loadData() {
        let defaultSession = URLSession(configuration: .default)
        
        var dataTask: URLSessionDataTask?
        
        dataTask?.cancel()
        
        // 2
        if var urlComponents = URLComponents(string: "https://bokunoheroacademia.fandom.com/wiki/Toshinori_Yagi") {
          
          // 3
          guard let url = urlComponents.url else {
            return
          }
          // 4
          dataTask =
            defaultSession.dataTask(with: url) { [weak self] data, response, error in
            defer {
              self?.dataTask = nil
            }
            // 5
            if let error = error {
              self?.errorMessage += "DataTask error: " +
                                      error.localizedDescription + "\n"
            } else if
              let data = data,
              let response = response as? HTTPURLResponse,
              response.statusCode == 200 {
              print(response)
              // 6
//              DispatchQueue.main.async {
//                completion(self?.tracks, self?.errorMessage ?? "")
//              }
            }
          }
          // 7
          dataTask?.resume()
        }

        
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

