//
//  Home.swift
//  LolWater
//
//  Created by Daniel Gaeta on 12/28/19.
//  Copyright © 2019 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var userData: UserData
    @State var showingProfile = false

    
    func increment() {
        print(self.userData.activeHour)
        print(self.userData.activeHourSuffix)
        print(self.userData.pmCups[self.userData.activeHour])
        if self.userData.activeHourSuffix == "AM" {
            self.userData.amCups[self.userData.activeHour] += 1
        } else {
            self.userData.pmCups[self.userData.activeHour] += 1
        }
        if self.userData.weekCups[self.userData.todayIndex] < 10 {
            self.userData.weekCups[self.userData.todayIndex] += 1
        }
        print(self.userData.pmCups[self.userData.activeHour])
    }
    
    func decrement() {
        print(self.userData.activeHour)
        print(self.userData.activeHourSuffix)
        print(self.userData.pmCups[self.userData.activeHour])
        if self.userData.activeHourSuffix == "AM" {
            if self.userData.amCups[self.userData.activeHour] > 0 {
               self.userData.amCups[self.userData.activeHour] -= 1
            }
        } else {
            if self.userData.pmCups[self.userData.activeHour] > 0 {
                self.userData.pmCups[self.userData.activeHour] -= 1
            }
        }
        
        if self.userData.weekCups[self.userData.todayIndex] > 0 {
            self.userData.weekCups[self.userData.todayIndex] -= 1
        }
        
        print(self.userData.pmCups[self.userData.activeHour])
    }
    
    var profileButton: some View {
        Button(action: { self.showingProfile.toggle() }) {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .accessibility(label: Text("User Profile"))
                .padding()
        }
    }
    
    var addButton: some View {
        Button(action: { self.increment() }) {
            Image(systemName: "plus.circle.fill")
                .imageScale(.large)
                .accessibility(label: Text("Add Cup"))
                .padding()
        }
    }
    
    var removeButton: some View {
        Button(action: { self.decrement() }) {
            Image(systemName: "minus.circle.fill")
                .imageScale(.large)
                .accessibility(label: Text("Add Cup"))
                .padding()
        }
    }
    
//    var df : DateFormatter = {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "a" // "a" prints "pm" or "am"
//        return formatter
//    }()
//    df.dateFormat = "a" // "a" prints "pm" or "am"
//    var hourString = formatter.string(from: Date()) // "12 AM"
    // Calendar.current.component(.hour, from: Date())
    
    var body: some View {
        NavigationView {
            
            VStack {
                Week()
                    .frame(height: 300)
                    .padding(.bottom, 70.0)
                
                HStack {
                    addButton
                    removeButton
                }
                Text("Cups you drank")
                
                Spacer()
            }
            
            .navigationBarTitle(Text("LolWater"))
            .navigationBarItems(trailing: profileButton)
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                .environmentObject(self.userData)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    
    static var previews: some View {
        Home().environmentObject(UserData())
    }
}
