//
//  CupRowView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/19/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct WaterRowView: View {
  var ozDrank: Int
  var pixelMultiplier = CGFloat(5)
  var maxHeight = CGFloat(80*5)

  var body: some View {
    VStack(alignment: .leading) {
      ZStack(alignment: .bottomLeading) {
        RoundedRectangle(cornerRadius: 8)
        .fill(Color.white)
        .frame(width: 30, height: (8*10) * pixelMultiplier)
        .border(
          LinearGradient(
            gradient: Gradient(colors: [.green, .red]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing),
            width: 3)
        
        RoundedRectangle(cornerRadius: 8)
          .fill(Color.blue)
          .frame(width: 30, height: CGFloat(ozDrank) * pixelMultiplier >= maxHeight ? maxHeight : CGFloat(ozDrank) * pixelMultiplier)
        
      }
    }
  }
}

struct WaterRowView_Previews: PreviewProvider {
  static var previews: some View {
    WaterRowView(ozDrank: 20)
  }
}
