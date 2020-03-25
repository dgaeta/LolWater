//
//  PersonSymbolView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/19/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct PersonSymbolView: View {
  var day: Day
  var colors: [Color] = [.red, .yellow, .blue]
  var height: Int
  var width: Int
  
  func getColor() -> Color {
    if day.ozDrank < 30 {
      return Color.red
    } else if day.ozDrank < 50 {
      return Color.yellow
    } else {
      return Color.green
    }
  }
  
  var body: some View {
      Image(systemName: "person")
        .resizable()
        .foregroundColor(getColor())
        .frame(width: CGFloat(width), height: CGFloat(height))
  }
}

struct PersonSymbolView_Previews: PreviewProvider {
    static var previews: some View {
      PersonSymbolView(day: Day(id: "DanTest5_2020-03-24", date: "2020-03-24", weekday: "Sunday", ozDrank: 50),
      height: 200, width: 200)
    }
}
