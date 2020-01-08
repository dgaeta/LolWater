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
            
            VStack {
                Week(
                mActive: false,
                tuActive: false,
                wActive: true,
                thActive: false,
                fActive: false,
                suActive: false,
                saActive: false,
                mCups: 1,
                tuCups: 1,
                wCups: 1,
                thCups: 1,
                fCups: 1,
                suCups: 1,
                saCups: 1)
                
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
