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
  var pixelMultiplier: CGFloat = 5

  
  var body: some View {
    VStack(spacing: 10) {
      RoundedRectangle(cornerRadius: 8)
        .fill(Color.blue)
        .frame(width: 30, height: CGFloat(ozDrank) * pixelMultiplier)
        .frame(width: 30, height: 200)
    }
  }
}

struct WaterRowView_Previews: PreviewProvider {
  static var previews: some View {
    WaterRowView(ozDrank: 20)
  }
}
