//
//  CupDayView.swift
//  LolWater
//
//  Created by Daniel Gaeta on 3/9/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct CupDayView: View {
    @State var day: WeekDay
    @Binding var cups: Int
    var increment: (_ day: WeekDay) -> Void
    var decrement: (_ day: WeekDay) -> Void
    
    var body: some View {
        VStack {
            Text("\(self.cups)")
            Button(action: {
                self.increment(self.day)

            }) {
                Image(systemName: "arrow.up.circle")
            }
            Button(action: {
                self.decrement(self.day)

            }) {
                Image(systemName: "arrow.down.circle")
            }
        }
    }
}

struct CupDayView_Previews: PreviewProvider {
    static var previews: some View {
        CupDayView(day: WeekDay.sunday, cups: .constant(2), increment: {_ in }, decrement: {_ in })
    }
}
