//
//  WelcomeMessageView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 2/29/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct WelcomeMessageView: View {
  var body: some View {
    HStack {
      LogoImage()
      
      VStack(alignment: .leading) {
        Text("Welcome to")
          .font(.headline)
          .bold()
        Text("LolWater")
          .font(.largeTitle)
          .bold()
      }
      .foregroundColor(.blue)
      .lineLimit(2)
      .multilineTextAlignment(.leading)
      .padding(.horizontal)
    }
  }
}

struct WelcomeMessageView_Previews: PreviewProvider {
  static var previews: some View {
    WelcomeMessageView()
  }
}
