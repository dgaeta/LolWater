//
//  Home.swift
//  LolWater
//
//  Created by Daniel Gaeta on 12/28/19.
//  Copyright © 2019 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var waterData: WaterData
    @State var showingProfile = false
    @State var activeDayIndex = 0
    
    var profileButton: some View {
        Button(action: { self.showingProfile.toggle() }) {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .accessibility(label: Text("User Profile"))
                .padding()
        }
    }
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack {
                        Week()
                        .frame(width: geometry.size.width * 0.95, height: geometry.size.height * 0.55)
                
                        Spacer()
                    }
                    
                    .navigationBarTitle(Text("LolWater"))
                .navigationBarItems(trailing: self.profileButton)
                .sheet(isPresented: self.$showingProfile) {
                        ProfileHost()
                        .environmentObject(self.waterData)
                    }
            }
            
            
        }
    }
    
}

struct Home_Previews: PreviewProvider {
    
    static var previews: some View {
        Home().environmentObject(WaterData())
    }
}
