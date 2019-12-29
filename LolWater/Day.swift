//
//  Day.swift
//  LolWater
//
//  Created by Daniel Gaeta on 12/28/19.
//  Copyright © 2019 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct Day: View {
    var amHours: [Int]
    var pmHours: [Int]
    
    var labels: [String] = ["12", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"]
    
    var body: some View {
        VStack {
            Text("Water drank today")
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            HStack(alignment: .bottom) {
                ForEach((0...11), id: \.self) { hour in
                    GraphCapsule(hour: self.labels[hour], height: 10 * self.amHours[hour])
                }
            }
          HStack(alignment: .bottom) {
              ForEach((0...11), id: \.self) { hour in
                  GraphCapsule(hour: self.labels[hour], height: 10 * self.pmHours[hour])
              }
          }
            
        }
        
    }
}

var amCups: [Int] = Array(0...11)
var pmCups: [Int] = Array(0...11)
var now: Int = 17

struct Day_Previews: PreviewProvider {
    static var previews: some View {
        Day(amHours: amCups, pmHours: pmCups)
    }
}
