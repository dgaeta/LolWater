//
//  CupCap.swift
//  LolWater
//
//  Created by Daniel Gaeta on 1/5/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct CupCap: View {
    var cornerWidth: CGFloat = 1
    
    var body: some View {
        GeometryReader { geometry in
            Path { p in
                p.addRoundedRect(
                    in: CGRect(
                        origin: CGPoint(x: geometry.size.width/4, y: 0),
                        size: CGSize(width: geometry.size.width/2, height: geometry.size.height/10)
                    ),
                    cornerSize: CGSize(width: self.cornerWidth, height: self.cornerWidth),
                    style: .circular
                )
                
                p.addRoundedRect(
                    in: CGRect(
                        origin: CGPoint(x: geometry.size.width/4, y: geometry.size.height/10),
                        size: CGSize(width: geometry.size.width/2, height: geometry.size.height/16)
                    ),
                    cornerSize: CGSize(width: self.cornerWidth, height: self.cornerWidth),
                    style: .circular
                )
                
//                p.move(to: CGPoint(x: geometry.size.width/4 + self.cornerWidth, y: geometry.size.height/16))
//                p.addLine(to: CGPoint(x: geometry.size.width/5, y: geometry.size.height/16 * 2))
//                p.addLine(to: CGPoint(x: geometry.size.width/5 * 4, y: geometry.size.height/16 * 2))
//                p.addLine(to: CGPoint(x: geometry.size.width/4 * 3 - self.cornerWidth, y:geometry.size.height/16))
            }
            .stroke(Color.gray, lineWidth: 0.5)
        }
    }
}

struct CupCap_Previews: PreviewProvider {
    static var previews: some View {
        CupCap()
    }
}
