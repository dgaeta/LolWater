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
    var hourSuffix: String
    var cups: Int
    var active: Bool
    
    var body: some View {
        VStack {
            Capsule()
                .fill(Color.white)
                .frame(
                    height: CGFloat(100),
                    alignment: .bottom
                )
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(self.active ? Color.blue : Color.gray, lineWidth: 5)
            )
            .overlay(
                Capsule()
                    .fill(self.active ? Color.blue : Color.gray)
                    .frame(
                        height: CGFloat(10 * cups),
                        alignment: .bottom
                    )
            )
            
            Text(hour + "\(self.hourSuffix)")
                .font(.caption)
        }
    }
}

struct GraphCapsule_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GraphCapsule(hour: "2am", hourSuffix: "am", cups: 2, active: true)
            GraphCapsule(hour: "6pm", hourSuffix: "pm", cups: 6, active: false)
        }
    }
}
