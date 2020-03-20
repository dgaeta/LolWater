//
//  DecreaseButtonView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/19/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct DecreaseButtonView: View {
  var body: some View {
    Button(action: {
        print("Decrease!")
    }) {
        ZStack {
            Circle()
                .fill(Color.red)
                .frame(width: 110)

            Circle()
                .fill(Color.purple)
                .frame(width: 90)

            Circle()
                .fill(Color.yellow)
                .frame(width: 70)

            Circle()
                .fill(Color.orange)
                .frame(width: 50)
            
            Circle()
                .fill(Color.orange)
                .frame(width: 30)
        }
    }
  }
}

struct DecreaseButtonView_Previews: PreviewProvider {
    static var previews: some View {
        DecreaseButtonView()
    }
}
