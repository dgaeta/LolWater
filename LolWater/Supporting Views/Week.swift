//
//  Week.swift
//  LolWater
//
//  Created by Daniel Gaeta on 1/2/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct Week: View {
    @EnvironmentObject var waterData: WaterData
    @State var active: Weekday = Weekday.Sunday
    
    var labels: [String] = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    var labels1: [String] = ["S", "M", "Tu", "W", "Th", "F", "S"]
    
    private func addCups() {
        switch self.active {
            case Weekday.Monday:
                self.waterData.mCups += 1
            case Weekday.Tuesday:
                self.waterData.tuCups += 1
            case Weekday.Wednesday:
                self.waterData.wCups += 1
            case Weekday.Thursday:
                self.waterData.thCups += 1
            case Weekday.Friday:
                self.waterData.fCups += 1
            case Weekday.Saturday:
                self.waterData.saCups += 1
            case Weekday.Sunday:
                self.waterData.suCups += 1
        }
    }
    
    private func removeCups() {
        switch self.active {
            case Weekday.Monday:
                self.waterData.mCups -= 1
            case Weekday.Tuesday:
                self.waterData.tuCups -= 1
            case Weekday.Wednesday:
                self.waterData.wCups -= 1
            case Weekday.Thursday:
                self.waterData.thCups -= 1
            case Weekday.Friday:
                self.waterData.fCups -= 1
            case Weekday.Saturday:
                self.waterData.saCups -= 1
            case Weekday.Sunday:
                self.waterData.suCups -= 1
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            
            
            VStack(alignment: .center, spacing: 5.0) {
                HStack {
                    
                    Button(action: { self.active = Weekday.Sunday }) {
                        VStack {
                            Text(self.labels1[0])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            VStack {
                                ForEach(
                                    Array(repeating: 0, count: self.waterData.suCups), id: \.self) {cup in
                                        WaterCup(
                                            cupColor: Color.blue
                                        ).frame(
                                            width: geometry.size.width/8,
                                            height: geometry.size.height/8
                                        )
                                }
                                if self.waterData.suCups == 0 {
                                    Spacer()
                                    Image(systemName: "exclamationmark.triangle")
                                }
                            }
                        }
                    }

                    
                    Button(action: { self.active = Weekday.Monday }) {
                        VStack {
                            VStack {
                                Text(self.labels1[1])
                                    .font(.headline)
                                
                                Person(lineWidth: CGFloat(2))
                                
                                VStack {
                                    ForEach(
                                        Array(repeating: 0, count: self.waterData.mCups), id: \.self) {cup in
                                            WaterCup(
                                                cupColor: Color.blue
                                            ).frame(
                                                width: geometry.size.width/8,
                                                height: geometry.size.height/8
                                            )
                                    }
                                }
                                if self.waterData.mCups == 0 {
                                    Spacer()
                                    Image(systemName: "exclamationmark.triangle")
                                }
                            }
                        }
                    }
                    
                    Button(action: { self.active = Weekday.Tuesday }) {
                        VStack {
                            Text(self.labels1[2])
                                .font(.headline)
                            Person(lineWidth: CGFloat(2))
                            
                            VStack {
                                ForEach(
                                    Array(repeating: 0, count: self.waterData.tuCups), id: \.self) {cup in
                                        WaterCup(
                                            cupColor: Color.blue
                                        ).frame(
                                            width: geometry.size.width/8,
                                            height: geometry.size.height/8
                                        )
                                }
                            }
                            if self.waterData.tuCups == 0 {
                                 Spacer()
                                 Image(systemName: "exclamationmark.triangle")
                            }
                        }
                        
                        
                    }
                    
                    Button(action: { self.active = Weekday.Wednesday }) {
                        VStack {
                            Text(self.labels1[3])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            VStack {
                                ForEach(
                                    Array(repeating: 0, count: self.waterData.wCups), id: \.self) {cup in
                                        WaterCup(
                                            cupColor: Color.blue
                                        ).frame(
                                            width: geometry.size.width/8,
                                            height: geometry.size.height/8
                                        )
                                }
                            }
                            if self.waterData.wCups == 0 {
                                 Spacer()
                                 Image(systemName: "exclamationmark.triangle")
                            }
                        }
                    }
                    
                    Button(action: { self.active = Weekday.Thursday }) {
                        VStack {
                            Text(self.labels1[4])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            VStack {
                                ForEach(
                                    Array(repeating: 0, count: self.waterData.thCups), id: \.self) {cup in
                                        WaterCup(
                                            cupColor: Color.blue
                                        ).frame(
                                            width: geometry.size.width/8,
                                            height: geometry.size.height/8
                                        )
                                }
                            }
                            if self.waterData.thCups == 0 {
                                 Spacer()
                                 Image(systemName: "exclamationmark.triangle")
                            }
                        }
                    }
                    
                    Button(action: { self.active = Weekday.Friday }) {
                        VStack {
                            Text(self.labels1[5])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            VStack {
                                ForEach(
                                    Array(repeating: 0, count: self.waterData.fCups), id: \.self) {cup in
                                        WaterCup(
                                            cupColor: Color.blue
                                        ).frame(
                                            width: geometry.size.width/8,
                                            height: geometry.size.height/8
                                        )
                                }
                            }
                            if self.waterData.fCups == 0 {
                                 Spacer()
                                 Image(systemName: "exclamationmark.triangle")
                            }
                        }
                    }
                    
                    Button(action: { self.active = Weekday.Saturday }) {
                        VStack {
                            Text(self.labels1[6])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            VStack {
                                ForEach(
                                    Array(repeating: 0, count: self.waterData.saCups), id: \.self) {cup in
                                        WaterCup(
                                            cupColor: Color.blue
                                        ).frame(
                                            width: geometry.size.width/8,
                                            height: geometry.size.height/8
                                        )
                                }
                            }
                            if self.waterData.saCups == 0 {
                                 Spacer()
                                 Image(systemName: "exclamationmark.triangle")
                            }
                        }
                    }
                }
                
                Text("Cups you drank")
                
                HStack {
                    Button(action: {
                        print("Remove cup clicked")
                        self.removeCups()
                    }) {
                       RemoveCup()
                    }
                    
                    Button(action: {
                        print("Add cup clicked")
                        self.addCups()
                    }) {
                       AddCup()
                    }
                }
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
        }
    }
}

enum Weekday {
    case Sunday
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
}

struct Week_Previews: PreviewProvider {
    static var previews: some View {
        Week().environmentObject(WaterData())
    }
}
