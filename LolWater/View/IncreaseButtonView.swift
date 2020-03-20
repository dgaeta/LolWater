//
//  IncreaseButtonView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/19/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct IncreaseButtonView: View {
    var body: some View {
        Button(action: {
            print("Increase!")
        }) {
            ZStack {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 110)

                Circle()
                    .fill(Color.gray)
                    .frame(width: 90)

                Circle()
                    .fill(Color.green)
                    .frame(width: 70)

                Circle()
                    .fill(Color.green)
                    .frame(width: 50)
                
                Circle()
                    .fill(Color.blue)
                    .frame(width: 30)
            }
        }
      
        
    }
}

struct IncreaseButtonView_Previews: PreviewProvider {
    static var previews: some View {
        IncreaseButtonView()
    }
}
