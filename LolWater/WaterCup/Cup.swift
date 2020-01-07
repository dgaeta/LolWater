//
//  Cup.swift
//  LolWater
//
//  Created by Daniel Gaeta on 1/5/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct Cup: View {
    @State var color: Color
    
    var body: some View {
        GeometryReader { geometry in
            Path { p in
                p.addRoundedRect(
                    in: CGRect(
                        origin: CGPoint(x: geometry.size.width/5, y: geometry.size.height/16 * 2),
                        size: CGSize(width: geometry.size.width/5 * 3, height: geometry.size.height - geometry.size.height/16 * 2)
                    ),
                    cornerSize: CGSize(width: 10, height: 1),
                    style: .circular
                )
            }
            .fill(self.color)
        }
    }
}

struct Cup_Previews: PreviewProvider {
    static var previews: some View {
        Cup(color: Color.blue)
    }
}
