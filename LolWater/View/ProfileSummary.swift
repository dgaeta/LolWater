//
//  ProfileSummary.swift
//  LolWater
//
//  Created by Daniel Gaeta on 1/2/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct ProfileSummary: View {
  var profile: Profile
  var userViewModel: UserManager
  var readerViewModel: ReaderViewModel
  
  // var dateManager: DateManager
    
    static let goalFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        return formatter
    }()
  
  init(profile: Profile, userViewModel: UserManager, readerViewModel: ReaderViewModel) {
    self.profile = profile
    self.userViewModel = userViewModel
    self.readerViewModel = readerViewModel
    // self.dateManager = DateManager(calendar: Calendar.current, minimumDate: readerViewModel.earliestDayRecord!, maximumDate: Date(), mode: 2) // automatically goes to mode=2 after start selection, and vice versa.
  }
    
    var body: some View {
        Group {
          
            
            VStack(alignment: .leading, spacing: 20) {
              Text(userViewModel.profile.username)
                  .bold()
                  .font(.title)
              
              Text("Date Joined lolWater: \(self.profile.goalDate, formatter: Self.goalFormat)")
                Text("Completed Badges")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        WaterBadge(name: "New Member Badge")
                        
                        WaterBadge(name: "1 oz Badge")
                            .hueRotation(Angle(degrees: 90))
                      
                        WaterBadge(name: "8 oz Badge")
                          .hueRotation(Angle(degrees: 90))
                        
                        WaterBadge(name: "64 oz in Day Badge")
                            .grayscale(0.5)
                            .hueRotation(Angle(degrees: 45))
                      
                        WaterBadge(name: "3 day streak Badge")
                          .grayscale(0.5)
                          .hueRotation(Angle(degrees: 45))
                    }
                }
                .frame(height: 140)
              
              
              VStack {
                CalendarHistoryView(isPresented: .constant(true), dateManager: DateManager(calendar: Calendar.current, minimumDate: readerViewModel.earliestDayRecord!, maximumDate: Date(), mode: 2), readerViewModel: self.readerViewModel)
              }.frame(height: 400)
              
              Button(action: self.userViewModel.signOut) {
                Text("Sign out")
              }
            }
            .padding(.all, 10.00)
            
            
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default, userViewModel: UserManager(), readerViewModel: ReaderViewModel())
    }
}
