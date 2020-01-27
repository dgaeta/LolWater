//
//  RemoveCup.swift
//  LolWater
//
//  Created by Daniel Gaeta on 1/8/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct RemoveCup: View {
    var body: some View {
        GeometryReader { geometry  in
            HStack {
                Image(systemName: "minus")
                    .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.red)
                    .frame(width: geometry.size.width/8, height: geometry.size.width/8)
                .accessibility(label: Text("Remove cup of water for today"))
                .padding()
                
                WaterCup(cupColor: Color.blue)
            }
        }
    }
}

struct RemoveCup_Previews: PreviewProvider {
    static var previews: some View {
        RemoveCup()
    }
}
