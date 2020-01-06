//
//  WaterCup.swift
//  LolWater
//
//  Created by Daniel Gaeta on 1/5/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct WaterCup: View {
    
    var body: some View {
        GeometryReader {geometry in
            CupCap()
            Cup().overlay(
                Text("Water")
                    .foregroundColor(Color.white)
                    .fontWeight(Font.Weight.bold)
                    .font(.system(size: geometry.size.height/6))
                    .rotationEffect(.degrees(90))

            )
        }
    }
}

struct WaterCup_Previews: PreviewProvider {
    static var previews: some View {
        WaterCup()
    }
}
