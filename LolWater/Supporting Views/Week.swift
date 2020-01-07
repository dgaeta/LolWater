//
//  Week.swift
//  LolWater
//
//  Created by Daniel Gaeta on 1/2/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct Week: View {
    @EnvironmentObject var userData: UserData
    var dailyCupTarget: Int = 8
    
    var labels: [String] = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    var labels1: [String] = ["S", "M", "Tu", "W", "Th", "F", "S"]
    
    func increment() {
        if self.userData.weekCups[self.userData.todayIndex] < 8 {
            self.userData.weekCups[self.userData.todayIndex] += 1
        }
    }
    
    func decrement() {
        if self.userData.weekCups[self.userData.todayIndex] > 0 {
            self.userData.weekCups[self.userData.todayIndex] -= 1
        }
    }
    
    var addButton: some View {
        Button(action: { self.increment() }) {
            Image(systemName: "plus.circle.fill")
                .imageScale(.large)
                .accessibility(label: Text("Add Cup"))
                .padding()
        }
    }
    
    var removeButton: some View {
        Button(action: { self.decrement() }) {
            Image(systemName: "minus.circle.fill")
                .imageScale(.large)
                .accessibility(label: Text("Add Cup"))
                .padding()
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
            
                HStack(alignment: .bottom) {
                    
                    ForEach((0...6), id: \.self) { dayIndex in
                        Button(action: { self.userData.todayIndex = dayIndex;}) {
                            
                            VStack {
                                Text(self.labels1[dayIndex])
                                    .font(.headline)
                                
                                Person(lineWidth: CGFloat(2))
                                
                                ForEach(
                                    Array(repeating: 0, count: self.userData.weekCups[dayIndex] ),
                                    id: \.self
                                    ) {cup in
                                        WaterCup(
                                            cupColor: Color.blue
                                        ).frame(
                                            width: geometry.size.width/14,
                                            height: geometry.size.height/19
                                        )
                                }
                            }
                        }
                    }
                    
                    .alignmentGuide(
                        .bottom,
                        computeValue: { d in d[.bottom] })
                }
            
                HStack {
                    self.addButton
                    self.removeButton
                }
                
                Text("Cups of Water drank this week")
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            }
        
        }
    }
}

struct Week_Previews: PreviewProvider {
    static var previews: some View {
        Week().environmentObject(UserData())
    }
}
