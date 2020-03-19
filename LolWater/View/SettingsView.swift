//
//  SettingsView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/18/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
  @EnvironmentObject var settings: Settings
  
  var body: some View {
      Text("SettingsView")
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
      SettingsView()
  }
}
