//
//  Day.swift
//  LolWater
//
//  Created by Daniel Gaeta on 12/28/19.
//  Copyright © 2019 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct Day: View {
    @EnvironmentObject var userData: UserData
    
    var labels: [String] = ["12", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"]
    
    var body: some View {
        VStack {
            Text("Cups of Water drank today")
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            HStack(alignment: .bottom) {
                ForEach((0...11), id: \.self) { hour in
                    Button(action: { self.userData.activeHour = hour; self.userData.activeHourSuffix = "AM" }) {
                        GraphCapsule(
                            hour: self.labels[hour],
                            hourSuffix: "AM",
                            cups: self.userData.amCups[hour],
                            active: self.userData.activeHour == hour && self.userData.activeHourSuffix == "AM")
                    }
                }
            }
            HStack(alignment: .bottom) {
              ForEach((0...11), id: \.self) { hour in
                Button(action: { self.userData.activeHour = hour; self.userData.activeHourSuffix = "PM" }) {
                  GraphCapsule(
                    hour: self.labels[hour],
                    hourSuffix: "PM",
                    cups: self.userData.pmCups[hour],
                    active: self.userData.activeHour == hour && self.userData.activeHourSuffix == "PM")
                }
              }
            }
            
        }
        
    }
}


struct Day_Previews: PreviewProvider {

    static var previews: some View {
        Day()
    }
}
