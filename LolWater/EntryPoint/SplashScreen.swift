//
//  SplashScreen.swift
//  LolWater
//
//  Created by Daniel Gaeta on 1/24/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct SplashScreen: View {
    let lolwaterBlue = Color("LolWater blue")
    
    var body: some View {
        ZStack {
            Text("Lol Water")
                .font(.largeTitle)
                .foregroundColor(.white)
                .offset(x: 20, y: 0)
            
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity,
               minHeight: 0, maxHeight: .infinity)
        .background(lolwaterBlue)
        .edgesIgnoringSafeArea(.all)
    }
}

