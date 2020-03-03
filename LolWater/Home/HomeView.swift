//
//  HomeView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/3/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    private let waterStore: WaterStore
    
    init() {
        waterStore = WaterStore()
    }
    
    var body: some View {
        VStack {
            Text("\(waterStore.week.Sunday.trackedCups)")
            Text("\(waterStore.week.Monday.trackedCups)")
            Text("\(waterStore.week.Tuesday.trackedCups)")
            Text("\(waterStore.week.Wednesday.trackedCups)")
            Text("\(waterStore.week.Thursday.trackedCups)")
            Text("\(waterStore.week.Friday.trackedCups)")
            Text("\(waterStore.week.Saturday.trackedCups)")
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
