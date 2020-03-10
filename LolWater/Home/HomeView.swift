//
//  HomeView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/3/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

enum WeekDay {
    case sunday, monday, tuesday, wednesday, thursday, friday, saturday
}

struct HomeView: View {
    @ObservedObject private var waterStore: WaterStore
    private let onComplete: () -> Void
    
//    // MARK: - Private Constants
//    private let onComplete: () -> Void
    
    init(onComplete: @escaping () -> Void, waterStore: WaterStore) {
        self.onComplete = onComplete
        self.waterStore = waterStore
    }
    
    var body: some View {
        HStack {
            CupDayView(
                day: WeekDay.sunday,
                cups: self.$waterStore.week.Sunday,
                increment: { _ in self.waterStore.incrementWeekDay(day: WeekDay.sunday) },
                decrement: { _ in  self.waterStore.decrementWeekDay(day: WeekDay.sunday)
            })

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(onComplete: {}, waterStore: WaterStore())
    }
}
