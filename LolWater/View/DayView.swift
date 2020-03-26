//
//  DayView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/20/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct DayView: View {
  var ozDrank: Int
  
  var body: some View {
    HStack {
      PersonSymbolView(ozDrank: ozDrank, height: 200, width: 200)
      WaterRowView(ozDrank: ozDrank)
    }
  }
}

struct DayView_Previews: PreviewProvider {
  static var previews: some View {
    DayView(ozDrank: 44)
  }
}
