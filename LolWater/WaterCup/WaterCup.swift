//
//  WaterCup.swift
//  LolWater
//
//  Created by Daniel Gaeta on 1/5/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct WaterCup: View {
    @State var cupColor: Color
    
    var body: some View {
        GeometryReader {geometry in
            VStack {
                 Rectangle()
                    .fill(Color.blue)
                    .frame(width: geometry.size.width/3, height: geometry.size.height/12)
                RoundedRectangle(cornerRadius: geometry.size.width/10, style: .circular)
                    .frame(width: geometry.size.width/3, height: geometry.size.height/12)
                    .foregroundColor(.gray)
                RoundedRectangle(cornerRadius: geometry.size.width/10, style: .circular)
                    .frame(width: geometry.size.width/2, height: geometry.size.height * 0.8)
                    .foregroundColor(.blue)
                    .overlay(Text("Water").foregroundColor(Color.white))
                Spacer()
            }
            
        }
    }
}

struct WaterCup_Previews: PreviewProvider {
    static var previews: some View {
        WaterCup(cupColor: Color.blue)
    }
}
