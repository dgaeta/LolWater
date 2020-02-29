//
//  LogoImage.swift
//  LolWater
//
//  Created by Daniel Gaeta on 2/29/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct LogoImage: View {
  var body: some View {
    Image(systemName: "table")
      .resizable()
      .frame(width: 60, height: 60, alignment: .center)
      .border(Color.gray, width: 1)
      .background(Color(white: 0.9))
      .clipShape(Circle())
      .foregroundColor(.blue)
  }
}

struct LogoImage_Previews: PreviewProvider {
  static var previews: some View {
    LogoImage()
  }
}
