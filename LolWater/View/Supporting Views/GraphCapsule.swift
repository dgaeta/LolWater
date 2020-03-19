//
//  GraphCapsule.swift
//  LolWater
//
//  Created by Daniel Gaeta on 12/28/19.
//  Copyright © 2019 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct GraphCapsule: View {
    var label: String
    var cups: Int
    var targetCups: Int
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
            .overlay(
                Capsule(style: .continuous)
                    .stroke(Color.green, style: StrokeStyle(lineWidth: 5, dash: [10]))
                    .frame(
                        height: CGFloat(10 * targetCups),
                        alignment: .bottom
                    )
            )
        
            Text("\(self.label)")
                .font(.caption)
        }
    }
}

struct GraphCapsule_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GraphCapsule(label: "2am", cups: 2, targetCups: 8, active: true)
            GraphCapsule(label: "6pm", cups: 6, targetCups: 8, active: false)
        }
    }
}
