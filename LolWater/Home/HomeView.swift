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
            
            CupDayView(
                day: WeekDay.monday,
                cups: self.$waterStore.week.Monday,
                increment: { _ in self.waterStore.incrementWeekDay(day: WeekDay.monday) },
                decrement: { _ in  self.waterStore.decrementWeekDay(day: WeekDay.monday)
            })
            
            CupDayView(
                day: WeekDay.tuesday,
                cups: self.$waterStore.week.Tuesday,
                increment: { _ in self.waterStore.incrementWeekDay(day: WeekDay.tuesday) },
                decrement: { _ in  self.waterStore.decrementWeekDay(day: WeekDay.tuesday)
            })
            
            CupDayView(
                day: WeekDay.wednesday,
                cups: self.$waterStore.week.Wednesday,
                increment: { _ in self.waterStore.incrementWeekDay(day: WeekDay.wednesday) },
                decrement: { _ in  self.waterStore.decrementWeekDay(day: WeekDay.wednesday)
            })
            
            CupDayView(
                day: WeekDay.thursday,
                cups: self.$waterStore.week.Thursday,
                increment: { _ in self.waterStore.incrementWeekDay(day: WeekDay.thursday) },
                decrement: { _ in  self.waterStore.decrementWeekDay(day: WeekDay.thursday)
            })
            
            CupDayView(
                day: WeekDay.friday,
                cups: self.$waterStore.week.Friday,
                increment: { _ in self.waterStore.incrementWeekDay(day: WeekDay.friday) },
                decrement: { _ in  self.waterStore.decrementWeekDay(day: WeekDay.friday)
            })
            
            CupDayView(
                day: WeekDay.saturday,
                cups: self.$waterStore.week.Saturday,
                increment: { _ in self.waterStore.incrementWeekDay(day: WeekDay.saturday) },
                decrement: { _ in  self.waterStore.decrementWeekDay(day: WeekDay.saturday)
            })

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(onComplete: {}, waterStore: WaterStore())
    }
}
