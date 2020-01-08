//
//  CupStack.swift
//  LolWater
//
//  Created by Daniel Gaeta on 1/7/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct CupStack: View {
    @EnvironmentObject var userData: UserData
    @State var cupCount: Int
    @State var color: Color
    @State var isActive: Bool
    
    var body: some View {
        GeometryReader { geometry in
            
            if self.isActive {
                VStack {
                    ForEach(Array(repeating: 0, count: self.cupCount), id: \.self) {cup in
                        WaterCup(
                            cupColor: self.color
                        ).frame(
                            width: geometry.size.width/8,
                            height: geometry.size.height/8
                        )
                    }
                }.border(LinearGradient(gradient: Gradient(colors: [.green, .blue]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing),
                width: 3)
            } else {
                VStack {
                    ForEach(Array(repeating: 0, count: self.cupCount), id: \.self) {cup in
                        WaterCup(
                            cupColor: self.color
                        ).frame(
                            width: geometry.size.width/8,
                            height: geometry.size.height/8
                        )
                    }
                }
            }
        }
    }
}

struct CupStack_Previews: PreviewProvider {
    static var previews: some View {
        CupStack(cupCount: 5, color: Color.blue, isActive: true).environmentObject(UserData())
    }
}
