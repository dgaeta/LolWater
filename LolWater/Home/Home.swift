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
    @State var cups = 0
    @State var currentHour = 12

    
    func increment() {
        self.cups += 1
    }
    
    func decrement() {
        if self.cups > 0 {
            self.cups -= 1
        }
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
        Button(action: increment) {
            Image(systemName: "plus.circle.fill")
                .imageScale(.large)
                .accessibility(label: Text("Add Cup"))
                .padding()
        }
    }
    
    var removeButton: some View {
        Button(action: decrement) {
            Image(systemName: "minus.circle.fill")
                .imageScale(.large)
                .accessibility(label: Text("Add Cup"))
                .padding()
        }
    }
    
    var amCups: [Int] = Array(0...11)
    var pmCups: [Int] = Array(0...11)
    var now: Int = 17
    
    var body: some View {
        NavigationView {
            
            VStack {
                Day(
                    amHours: amCups,
                    pmHours: pmCups)
                    .frame(height: 300)
                    .padding(.bottom, 70.0)
                
                Text("\(self.cups)")
                    .font(.caption)
                HStack {
                    addButton
                    removeButton
                }
                Text("Button here to increase water count")
                
                Spacer()
            }
            
                
            
            .navigationBarTitle(Text("LolWater"))
            .navigationBarItems(trailing: profileButton)
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home().environmentObject(UserData())
    }
}
