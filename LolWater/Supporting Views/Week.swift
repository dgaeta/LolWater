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
    private var maxCups: Int = 8
    
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
                            
                            if self.waterData.suCups > 8 {
                                Text("\(self.waterData.suCups)")
                            }
                            
                            VStack(alignment: .trailing, spacing: 5.0) {
                                ForEach(
                                Array(repeating: 0, count: min(self.waterData.suCups, self.maxCups)), id: \.self) {cup in
                                        WaterCup(
                                            cupColor: Color.blue
                                        ).frame(
                                            width: geometry.size.width/20,
                                            height: geometry.size.height/20
                                        )
                                }
                                
                                if self.waterData.suCups == 0 {
                                    Spacer()
                                    Image(systemName: "exclamationmark.triangle")
                                }
                                if self.active == Weekday.Sunday {
                                    Image(systemName: "chevron.up.circle.fill")
                                } else {
                                    Image(systemName: "chevron.up.circle")
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
                                
                                if self.waterData.mCups > 8 {
                                    Text("\(self.waterData.mCups)")
                                }
                                
                                VStack {
                                    ForEach(
                                        Array(repeating: 0, count: min(self.waterData.mCups, self.maxCups)), id: \.self) {cup in
                                            WaterCup(
                                                cupColor: Color.blue
                                            ).frame(
                                                width: geometry.size.width/20,
                                                height: geometry.size.height/20
                                            )
                                    }
                                }
                                if self.waterData.mCups == 0 {
                                    Spacer()
                                    Image(systemName: "exclamationmark.triangle")
                                }
                                if self.active == Weekday.Monday {
                                    Image(systemName: "chevron.up.circle.fill")
                                } else {
                                    Image(systemName: "chevron.up.circle")
                                }
                            }
                        }
                    }
                    
                    Button(action: { self.active = Weekday.Tuesday }) {
                        VStack {
                            Text(self.labels1[2])
                                .font(.headline)
                            Person(lineWidth: CGFloat(2))
                            
                            if self.waterData.tuCups > 8 {
                                Text("\(self.waterData.tuCups)")
                            }
                            
                            VStack {
                                ForEach(
                                    Array(repeating: 0, count: min(self.waterData.tuCups, self.maxCups)), id: \.self) {cup in
                                        WaterCup(
                                            cupColor: Color.blue
                                        ).frame(
                                            width: geometry.size.width/20,
                                            height: geometry.size.height/20
                                        )
                                }
                            }
                            if self.waterData.tuCups == 0 {
                                 Spacer()
                                 Image(systemName: "exclamationmark.triangle")
                            }
                            if self.active == Weekday.Tuesday {
                                Image(systemName: "chevron.up.circle.fill")
                            } else {
                                Image(systemName: "chevron.up.circle")
                            }
                        }
                        
                        
                    }
                    
                    Button(action: { self.active = Weekday.Wednesday }) {
                        VStack {
                            Text(self.labels1[3])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            if self.waterData.wCups > 8 {
                                Text("\(self.waterData.wCups)")
                            }
                            
                            VStack {
                                ForEach(
                                    Array(repeating: 0, count: min(self.waterData.wCups, self.maxCups)), id: \.self) {cup in
                                        WaterCup(
                                            cupColor: Color.blue
                                        ).frame(
                                            width: geometry.size.width/20,
                                            height: geometry.size.height/20
                                        )
                                }
                            }
                            if self.waterData.wCups == 0 {
                                 Spacer()
                                 Image(systemName: "exclamationmark.triangle")
                            }
                            if self.active == Weekday.Wednesday {
                                Image(systemName: "chevron.up.circle.fill")
                            } else {
                                Image(systemName: "chevron.up.circle")
                            }
                        }
                    }
                    
                    Button(action: { self.active = Weekday.Thursday }) {
                        VStack {
                            Text(self.labels1[4])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            if self.waterData.thCups > 8 {
                                Text("\(self.waterData.thCups)")
                            }
                            
                            VStack {
                                ForEach(
                                    Array(repeating: 0, count: min(self.waterData.thCups, self.maxCups)), id: \.self) {cup in
                                        WaterCup(
                                            cupColor: Color.blue
                                        ).frame(
                                            width: geometry.size.width/20,
                                            height: geometry.size.height/20
                                        )
                                }
                            }
                            if self.waterData.thCups == 0 {
                                 Spacer()
                                 Image(systemName: "exclamationmark.triangle")
                            }
                            if self.active == Weekday.Thursday {
                                Image(systemName: "chevron.up.circle.fill")
                            } else {
                                Image(systemName: "chevron.up.circle")
                            }
                        }
                    }
                    
                    Button(action: { self.active = Weekday.Friday }) {
                        VStack {
                            Text(self.labels1[5])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            if self.waterData.fCups > 8 {
                                Text("\(self.waterData.fCups)")
                            }
                            
                            VStack {
                                ForEach(
                                    Array(repeating: 0, count: min(self.waterData.fCups, self.maxCups)), id: \.self) {cup in
                                        WaterCup(
                                            cupColor: Color.blue
                                        ).frame(
                                            width: geometry.size.width/20,
                                            height: geometry.size.height/20
                                        )
                                }
                            }
                            if self.waterData.fCups == 0 {
                                 Spacer()
                                 Image(systemName: "exclamationmark.triangle")
                            }
                            if self.active == Weekday.Friday {
                                Image(systemName: "chevron.up.circle.fill")
                            } else {
                                Image(systemName: "chevron.up.circle")
                            }
                        }
                    }
                    
                    Button(action: { self.active = Weekday.Saturday }) {
                        VStack {
                            Text(self.labels1[6])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            if self.waterData.saCups > 8 {
                                Text("\(self.waterData.saCups)")
                            }
                            
                            VStack {
                                ForEach(
                                    Array(repeating: 0, count: min(self.waterData.saCups, self.maxCups)), id: \.self) {cup in
                                        WaterCup(
                                            cupColor: Color.blue
                                        ).frame(
                                            width: geometry.size.width/20,
                                            height: geometry.size.height/20
                                        )
                                }
                            }
                            if self.waterData.saCups == 0 {
                                 Spacer()
                                 Image(systemName: "exclamationmark.triangle")
                            }
                            if self.active == Weekday.Saturday {
                                Image(systemName: "chevron.up.circle.fill")
                            } else {
                                Image(systemName: "chevron.up.circle")
                            }
                        }
                    }
                }.frame(minHeight: geometry.size.height*0.70)
                
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
