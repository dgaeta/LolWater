//
//  Week.swift
//  LolWater
//
//  Created by Daniel Gaeta on 1/2/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

//struct Week: View {
//    @EnvironmentObject var waterData: WaterData
//    @State var active: Weekday = Weekday.Sunday
//    private var maxCups: Int = 8
//    
//    var labels: [String] = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
//    var labels1: [String] = ["S", "M", "Tu", "W", "Th", "F", "S"]
//    
//    private func addCups() {
//        switch self.active {
//            case Weekday.Monday:
//                self.waterData.mCups += 1
//            case Weekday.Tuesday:
//                self.waterData.tuCups += 1
//            case Weekday.Wednesday:
//                self.waterData.wCups += 1
//            case Weekday.Thursday:
//                self.waterData.thCups += 1
//            case Weekday.Friday:
//                self.waterData.fCups += 1
//            case Weekday.Saturday:
//                self.waterData.saCups += 1
//            case Weekday.Sunday:
//                self.waterData.suCups += 1
//        }
//    }
//    
//    private func removeCups() {
//        switch self.active {
//            case Weekday.Monday:
//                if self.waterData.mCups > 0 {
//                    self.waterData.mCups -= 1
//                }
//            case Weekday.Tuesday:
//                if self.waterData.tuCups > 0 {
//                    self.waterData.tuCups -= 1
//                }
//            case Weekday.Wednesday:
//                if self.waterData.wCups > 0 {
//                    self.waterData.wCups -= 1
//                }
//            case Weekday.Thursday:
//                if self.waterData.thCups > 0 {
//                    self.waterData.thCups -= 1
//                }
//            case Weekday.Friday:
//                if self.waterData.fCups > 0 {
//                    self.waterData.fCups -= 1
//                }
//            case Weekday.Saturday:
//                if self.waterData.saCups > 0 {
//                    self.waterData.saCups -= 1
//                }
//            case Weekday.Sunday:
//                if self.waterData.suCups > 0 {
//                    self.waterData.suCups -= 1
//                }
//        }
//    }
//    
//    var body: some View {
//        GeometryReader { geometry in
//            
//            
//            VStack(alignment: .center, spacing: 5.0) {
//                HStack {
//                    
//                    Button(action: { self.active = Weekday.Sunday }) {
//                        WeekdayColumn(cups: self.waterData.suCups, maxCups: self.maxCups, active: self.active, label: self.labels1[0], day: Weekday.Sunday)
//                    }
//
//                    
//                    Button(action: { self.active = Weekday.Monday }) {
//                        WeekdayColumn(cups: self.waterData.mCups, maxCups: self.maxCups, active: self.active, label: self.labels1[1], day: Weekday.Monday)
//                    }
//                    
//                    Button(action: { self.active = Weekday.Tuesday }) {
//                        WeekdayColumn(cups: self.waterData.tuCups, maxCups: self.maxCups, active: self.active, label: self.labels1[2], day: Weekday.Tuesday)
//                    }
//                    
//                    Button(action: { self.active = Weekday.Wednesday }) {
//                        WeekdayColumn(cups: self.waterData.wCups, maxCups: self.maxCups, active: self.active, label: self.labels1[3], day: Weekday.Wednesday)
//                    }
//                    
//                    Button(action: { self.active = Weekday.Thursday }) {
//                        WeekdayColumn(cups: self.waterData.thCups, maxCups: self.maxCups, active: self.active, label: self.labels1[4], day: Weekday.Thursday)
//                    }
//                    
//                    Button(action: { self.active = Weekday.Friday }) {
//                        WeekdayColumn(cups: self.waterData.fCups, maxCups: self.maxCups, active: self.active, label: self.labels1[5], day: Weekday.Friday)
//                    }
//                    
//                    Button(action: { self.active = Weekday.Saturday }) {
//                        WeekdayColumn(cups: self.waterData.saCups, maxCups: self.maxCups, active: self.active, label: self.labels1[6], day: Weekday.Saturday)
//                    }
//                }.frame(minHeight: geometry.size.height*0.80)
//                
//                Text("Cups you drank")
//                
//                HStack {
//                    Button(action: {
//                        print("Remove cup clicked")
//                        self.removeCups()
//                    }) {
//                       RemoveCup().frame(width: geometry.size.width/3)
//                    }
//                    
//                    Button(action: {
//                        print("Add cup clicked")
//                        self.addCups()
//                    }) {
//                        AddCup().frame(width: geometry.size.width/3)
//                    }
//                }
//            }
//            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//            
//            
//        }
//    }
//}
//
//enum Weekday {
//    case Sunday
//    case Monday
//    case Tuesday
//    case Wednesday
//    case Thursday
//    case Friday
//    case Saturday
//}
//
//struct Week_Previews: PreviewProvider {
//    static var previews: some View {
//        Week().environmentObject(WaterData())
//    }
//}
