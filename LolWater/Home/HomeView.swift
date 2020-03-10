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
            VStack {
                Text("\(self.waterStore.week.Sunday)")
                Button(action: {
                    self.waterStore.incrementWeekDay(day: WeekDay.sunday)
                    
                }) {
                    Image(systemName: "arrow.up.circle")
                }
                Button(action: {
                    self.waterStore.decrementWeekDay(day: WeekDay.sunday)
                    
                }) {
                    Image(systemName: "arrow.down.circle")
                }
            }
            
            VStack {
                Text("\(self.waterStore.week.Monday)")
                Button(action: {
                    self.waterStore.incrementWeekDay(day: WeekDay.monday)
                    
                }) {
                    Image(systemName: "arrow.up.circle")
                }
                Button(action: {
                    self.waterStore.decrementWeekDay(day: WeekDay.monday)
                    
                }) {
                    Image(systemName: "arrow.down.circle")
                }
            }
            
            VStack {
                Text("\(self.waterStore.week.Tuesday)")
                Button(action: {
                    self.waterStore.incrementWeekDay(day: WeekDay.tuesday)
                    
                }) {
                    Image(systemName: "arrow.up.circle")
                }
                Button(action: {
                    self.waterStore.decrementWeekDay(day: WeekDay.tuesday)
                    
                }) {
                    Image(systemName: "arrow.down.circle")
                }
            }
            
            VStack {
                Text("\(self.waterStore.week.Wednesday)")
                Button(action: {
                    self.waterStore.incrementWeekDay(day: WeekDay.wednesday)
                    
                }) {
                    Image(systemName: "arrow.up.circle")
                }
                Button(action: {
                    self.waterStore.decrementWeekDay(day: WeekDay.wednesday)
                    
                }) {
                    Image(systemName: "arrow.down.circle")
                }
            }
            
            VStack {
                Text("\(self.waterStore.week.Thursday)")
                Button(action: {
                    self.waterStore.incrementWeekDay(day: WeekDay.thursday)
                    
                }) {
                    Image(systemName: "arrow.up.circle")
                }
                Button(action: {
                    self.waterStore.decrementWeekDay(day: WeekDay.thursday)
                    
                }) {
                    Image(systemName: "arrow.down.circle")
                }
            }
            
            VStack {
                Text("\(self.waterStore.week.Friday)")
                Button(action: {
                    self.waterStore.incrementWeekDay(day: WeekDay.friday)
                    
                }) {
                    Image(systemName: "arrow.up.circle")
                }
                Button(action: {
                    self.waterStore.decrementWeekDay(day: WeekDay.friday)
                    
                }) {
                    Image(systemName: "arrow.down.circle")
                }
            }
            
            VStack {
                Text("\(self.waterStore.week.Saturday)")
                Button(action: {
                    self.waterStore.incrementWeekDay(day: WeekDay.saturday)
                    
                }) {
                    Image(systemName: "arrow.up.circle")
                }
                Button(action: {
                    self.waterStore.decrementWeekDay(day: WeekDay.saturday)
                    
                }) {
                    Image(systemName: "arrow.down.circle")
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(onComplete: {}, waterStore: WaterStore())
    }
}
