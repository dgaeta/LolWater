//
//  Home.swift
//  LolWater
//
//  Created by Daniel Gaeta on 12/28/19.
//  Copyright © 2019 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct HomeView: View {
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

struct HomeView_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeView().environmentObject(WaterData())
    }
}
