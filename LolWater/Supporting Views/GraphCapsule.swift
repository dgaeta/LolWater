//
//  GraphCapsule.swift
//  LolWater
//
//  Created by Daniel Gaeta on 12/28/19.
//  Copyright © 2019 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct GraphCapsule: View {
    var hour: String
    var height: Int
    
    var body: some View {
        VStack {
            Capsule()
                .fill(Color.black)
                .frame(
                    height: CGFloat(height),
                    alignment: .bottom
                )
            
            Text(hour)
                .font(.caption)
        }
    }
}

struct GraphCapsule_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GraphCapsule(hour: "2am", height: 2 * 10)
            GraphCapsule(hour: "6pm", height: 6 * 10)
        }
    }
}
