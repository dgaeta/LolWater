//
//  Week.swift
//  LolWater
//
//  Created by Daniel Gaeta on 1/2/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct Week: View {
    @State var mActive: Bool
    @State var tuActive: Bool
    @State var wActive: Bool
    @State var thActive: Bool
    @State var fActive: Bool
    @State var suActive: Bool
    @State var saActive: Bool
    @State var mCups: Int
    @State var tuCups: Int
    @State var wCups: Int
    @State var thCups: Int
    @State var fCups: Int
    @State var suCups: Int
    @State var saCups: Int
    var dailyCupTarget: Int = 8
    
    var labels: [String] = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    var labels1: [String] = ["S", "M", "Tu", "W", "Th", "F", "S"]
    
    var body: some View {
        GeometryReader { geometry in
            
            
            HStack(alignment: .bottom) {
                
                
                Button(action: { self.suActive.toggle() }) {
                    if self.suActive == true {
                        VStack {
                            Text(self.labels1[0])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            ForEach(
                                Array(repeating: 0, count: self.suCups ),
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
                        .border(LinearGradient(gradient: Gradient(colors: [.green, .blue]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing),
                        width: 3)
                    } else {
                        VStack {
                            Text(self.labels1[0])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            ForEach(
                                Array(repeating: 0, count: self.suCups ),
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

                
                Button(action: { self.mActive.toggle() }) {
                    if self.mActive == true {
                        VStack {
                            Text(self.labels1[1])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            ForEach(
                                Array(repeating: 0, count: self.mCups ),
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
                        .border(LinearGradient(gradient: Gradient(colors: [.green, .blue]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing),
                        width: 3)
                    } else {
                        VStack {
                            Text(self.labels1[1])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            ForEach(
                                Array(repeating: 0, count: self.mCups ),
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
                
                Button(action: { self.tuActive.toggle() }) {
                    if self.tuActive == true {
                        VStack {
                            Text(self.labels1[2])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            ForEach(
                                Array(repeating: 0, count: self.tuCups ),
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
                        .border(LinearGradient(gradient: Gradient(colors: [.green, .blue]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing),
                        width: 3)
                    } else {
                        VStack {
                            Text(self.labels1[2])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            ForEach(
                                Array(repeating: 0, count: self.tuCups ),
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
                
                Button(action: { self.wActive.toggle() }) {
                    if self.wActive == true {
                        VStack {
                            Text(self.labels1[3])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            ForEach(
                                Array(repeating: 0, count: self.wCups ),
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
                        .border(LinearGradient(gradient: Gradient(colors: [.green, .blue]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing),
                        width: 3)
                    } else {
                        VStack {
                            Text(self.labels1[3])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            ForEach(
                                Array(repeating: 0, count: self.wCups ),
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
                
                Button(action: { self.thActive.toggle() }) {
                    if self.thActive == true {
                        VStack {
                            Text(self.labels1[4])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            ForEach(
                                Array(repeating: 0, count: self.thCups ),
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
                        .border(LinearGradient(gradient: Gradient(colors: [.green, .blue]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing),
                        width: 3)
                    } else {
                        VStack {
                            Text(self.labels1[4])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            ForEach(
                                Array(repeating: 0, count: self.thCups ),
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
                
                Button(action: { self.fActive.toggle() }) {
                    if self.fActive == true {
                        VStack {
                            Text(self.labels1[5])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            ForEach(
                                Array(repeating: 0, count: self.fCups ),
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
                        .border(LinearGradient(gradient: Gradient(colors: [.green, .blue]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing),
                        width: 3)
                    } else {
                        VStack {
                            Text(self.labels1[5])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            ForEach(
                                Array(repeating: 0, count: self.fCups ),
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
                
                Button(action: { self.saActive.toggle() }) {
                    if self.saActive == true {
                        VStack {
                            Text(self.labels1[6])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            ForEach(
                                Array(repeating: 0, count: self.saCups ),
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
                        .border(LinearGradient(gradient: Gradient(colors: [.green, .blue]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing),
                        width: 3)
                    } else {
                        VStack {
                            Text(self.labels1[6])
                                .font(.headline)
                            
                            Person(lineWidth: CGFloat(2))
                            
                            ForEach(
                                Array(repeating: 0, count: self.saCups ),
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
            }
        
        }
    }
}

struct Week_Previews: PreviewProvider {
    static var previews: some View {
        Week(
            mActive: false,
            tuActive: false,
            wActive: true,
            thActive: false,
            fActive: false,
            suActive: false,
            saActive: false,
            mCups: 1,
            tuCups: 1,
            wCups: 1,
            thCups: 1,
            fCups: 1,
            suCups: 1,
            saCups: 1)
    }
}
