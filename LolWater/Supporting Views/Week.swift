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
    
    var body: some View {
        VStack {
            Text("Cups of Water drank this week")
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            HStack(alignment: .bottom) {
                ForEach((0...6), id: \.self) { dayIndex in
                    Button(action: { self.userData.todayIndex = dayIndex;}) {
                        GraphCapsule(
                            label: self.labels[dayIndex],
                            cups: self.userData.weekCups[dayIndex],
                            targetCups: self.dailyCupTarget,
                            active: self.userData.todayIndex == dayIndex)
                    }
                }
            }
        }
    }
}

struct Week_Previews: PreviewProvider {
    static var previews: some View {
        Week().environmentObject(UserData())
    }
}
