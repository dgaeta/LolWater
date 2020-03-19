//
//  Day.swift
//  LolWater
//
//  Created by Daniel Gaeta on 12/28/19.
//  Copyright © 2019 Daniel Gaeta. All rights reserved.
//

import SwiftUI

//struct Day: View {
//    @EnvironmentObject var waterData: WaterData
//    
//    var labels: [String] = ["12", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"]
//    
//    func increment() {
//        if self.waterData.activeHourSuffix == "AM" {
//            self.waterData.amCups[self.waterData.activeHour] += 1
//        } else {
//            self.waterData.pmCups[self.waterData.activeHour] += 1
//        }
//    }
//    
//    func decrement() {
//        if self.waterData.activeHourSuffix == "AM" {
//            if self.waterData.amCups[self.waterData.activeHour] > 0 {
//               self.waterData.amCups[self.waterData.activeHour] -= 1
//            }
//        } else {
//            if self.waterData.pmCups[self.waterData.activeHour] > 0 {
//                self.waterData.pmCups[self.waterData.activeHour] -= 1
//            }
//        }
//    }
//    
//    var addButton: some View {
//        Button(action: { self.increment() }) {
//            Image(systemName: "plus.circle.fill")
//                .imageScale(.large)
//                .accessibility(label: Text("Add Cup"))
//                .padding()
//        }
//    }
//    
//    var removeButton: some View {
//        Button(action: { self.decrement() }) {
//            Image(systemName: "minus.circle.fill")
//                .imageScale(.large)
//                .accessibility(label: Text("Add Cup"))
//                .padding()
//        }
//    }
//    
//    var body: some View {
//        VStack {
//            HStack {
//                addButton
//                removeButton
//            }
//            
//            Text("Cups of Water drank today")
//                .font(.headline)
//                .padding(.leading, 15)
//                .padding(.top, 5)
//            HStack(alignment: .bottom) {
//                ForEach((0...11), id: \.self) { hour in
//                    Button(action: { self.waterData.activeHour = hour; self.waterData.activeHourSuffix = "AM" }) {
//                        GraphCapsule(
//                            label: "\(self.labels[hour])AM",
//                            cups: self.waterData.amCups[hour],
//                            targetCups: 10,
//                            active: self.waterData.activeHour == hour && self.waterData.activeHourSuffix == "AM")
//                    }
//                }
//            }
//            HStack(alignment: .bottom) {
//              ForEach((0...11), id: \.self) { hour in
//                Button(action: { self.waterData.activeHour = hour; self.waterData.activeHourSuffix = "PM" }) {
//                  GraphCapsule(
//                    label: "\(self.labels[hour])PM",
//                    cups: self.waterData.pmCups[hour],
//                    targetCups: 10,
//                    active: self.waterData.activeHour == hour && self.waterData.activeHourSuffix == "PM")
//                }
//              }
//            }
//            
//        }
//        
//    }
//}
//
//
//struct Day_Previews: PreviewProvider {
//
//    static var previews: some View {
//        Day().environmentObject(WaterData())
//    }
//}
