//
//  WaterBadge.swift
//  LolWater
//
//  Created by Daniel Gaeta on 1/4/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct WaterBadge: View {
    var name: String
    var body: some View {
        VStack(alignment: .center) {
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibility(label: Text("Badge for \(name)."))
        }
    }
}

struct WaterBadge_Previews: PreviewProvider {
    static var previews: some View {
        WaterBadge(name: "1st Cup")
    }
}
