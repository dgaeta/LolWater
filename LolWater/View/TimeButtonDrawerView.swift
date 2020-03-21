//
//  TimeButtonDrawerView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/20/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct TimeButtonDrawerView: View {
  var body: some View {
    VStack(spacing: 20) {
      Button(action: {
          print("Week View!")
      }) {
          Text("Week")
          .foregroundColor(.white)
          .frame(width: 50, height: 50, alignment: .center)
          .background(Circle()
            .fill(Color.yellow)
          )
      }
        
      Button(action: {
          print("Month View!")
      }) {
          Text("Month")
          .foregroundColor(.white)
          .frame(width: 50, height: 50, alignment: .center)
          .background(Circle()
            .fill(Color.yellow)
          )
      }
    }
  }
}

struct TimeButtonDrawerView_Previews: PreviewProvider {
    static var previews: some View {
        TimeButtonDrawerView()
    }
}
