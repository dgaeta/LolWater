//
//  AddCup.swift
//  LolWater
//
//  Created by Daniel Gaeta on 1/8/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct AddCup: View {
    var body: some View {
        GeometryReader { geometry  in
            HStack {
                Image(systemName: "plus")
                .resizable()
                .foregroundColor(Color.green)
                    .frame(width: geometry.size.width/8, height: geometry.size.width/8)
                .accessibility(label: Text("Add cup of water for today"))
                .padding()
                
                WaterCup(cupColor: Color.blue)
            }
        }
    }
}

struct AddCup_Previews: PreviewProvider {
    static var previews: some View {
        AddCup()
    }
}
