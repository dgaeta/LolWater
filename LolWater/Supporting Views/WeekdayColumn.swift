//
//  Weekday.swift
//  LolWater
//
//  Created by Daniel Gaeta on 1/27/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct WeekdayColumn: View {
    var cups: Int
    var maxCups: Int
    var active: Weekday
    var label: String
    var day: Weekday
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()                
                Text(self.label)
                    .font(.headline)
                
                Person(lineWidth: CGFloat(2))
                
                if self.cups > 8 {
                    Text("\(self.cups)")
                }
                
                VStack(alignment: .trailing, spacing: 5.0) {
                    ForEach(
                    Array(repeating: 0, count: min(self.cups, self.maxCups)), id: \.self) {cup in
                            WaterCup(
                                cupColor: Color.blue
                            ).frame(
                                width: geometry.size.width,
                                height: geometry.size.height/12
                            )
                    }
                    
                    
                    
                    
                    if self.cups == 0 {
                        Image(systemName: "exclamationmark.triangle")
                    }
                    if self.active == self.day {
                        Image(systemName: "chevron.up.circle.fill")
                    } else {
                        Image(systemName: "chevron.up.circle")
                    }
                }
            }
        }
        
    }
}

struct WeekdayColumn_Previews: PreviewProvider {
    static var previews: some View {
        WeekdayColumn(
            cups: 1,
            maxCups: 8,
            active: Weekday.Monday,
            label: "M",
            day: Weekday.Monday
        )
    }
}
