//
//  Person.swift
//  LolWater
//
//  Created by Daniel Gaeta on 1/6/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct Person: View {
    @State var lineWidth: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let w = geometry.size.width                
                
                let s = CGSize(width: w / 4, height: w / 4)
                let halfwayCircleCenteredX = (w/2) - (w/8)
                
                path.addEllipse(
                    in: CGRect(
                        origin: CGPoint(x: halfwayCircleCenteredX, y: 0),
                        size: s)
                )
                
                let centerBodyY = w / 4
                let centerBodyX = w / 2
                
                let bodyStartPoint = CGPoint(x: centerBodyX, y: centerBodyY)
                path.move(to: bodyStartPoint)
                
                let trapWidth = (w/16)
                let leftShoulderStartX = halfwayCircleCenteredX - trapWidth
                let leftShoulderStartY = centerBodyY
                let leftShoulderStartPoint = CGPoint(
                    x: leftShoulderStartX,
                    y: leftShoulderStartY)
                path.addLine(to: leftShoulderStartPoint)
                
                let radiusOfShoulder = (w/16)
                
                let leftShoulderEndPoint = CGPoint(
                    x: leftShoulderStartPoint.x - (radiusOfShoulder * 2),
                    y: leftShoulderStartPoint.y + (radiusOfShoulder * 2))
                let leftShoulderControlPoint = CGPoint(
                    x: leftShoulderStartPoint.x - (radiusOfShoulder * 2),
                    y: leftShoulderStartPoint.y)
                path.addQuadCurve(
                    to: leftShoulderEndPoint, control: leftShoulderControlPoint)
                
                let outerArmLength = w/2 
                let leftHandStartPoint = CGPoint(
                    x: leftShoulderEndPoint.x,
                    y: leftShoulderEndPoint.y + outerArmLength)
                path.addLine(to: leftHandStartPoint)
                
                let handRadius = w/6
                let leftHandControlPoint = CGPoint(
                    x: leftHandStartPoint.x + (handRadius/2),
                    y: leftHandStartPoint.y + handRadius)
                let leftHandEndPoint = CGPoint(
                    x:leftHandStartPoint.x + (handRadius),
                    y:leftHandStartPoint.y)
                path.addQuadCurve(to: leftHandEndPoint, control: leftHandControlPoint)
                
                let innerArmLength = outerArmLength * 0.8
                let leftShoulderPitPoint = CGPoint(
                    x: leftHandEndPoint.x,
                    y: leftHandEndPoint.y - innerArmLength)
                path.addLine(to: leftShoulderPitPoint)
                
                let armPitToAnkleLength = innerArmLength * 2
                let leftAnkleStartPoint = CGPoint(
                    x: leftShoulderPitPoint.x,
                    y: leftShoulderPitPoint.y + armPitToAnkleLength)
                path.addLine(to: leftAnkleStartPoint)
                
                let footWidth = w/2 - leftAnkleStartPoint.x
                let leftAnkleEndPoint = CGPoint(
                    x: leftAnkleStartPoint.x + footWidth,
                    y: leftAnkleStartPoint.y)
                path.addLine(to: leftAnkleEndPoint)
                
                let crotchPoint = CGPoint(
                    x: leftAnkleEndPoint.x,
                    y: leftAnkleEndPoint.y - (armPitToAnkleLength * 0.7))
                path.addLine(to: crotchPoint)
                
                path.addLine(to: leftAnkleEndPoint)
                
                let rightAngleEndPoint = CGPoint(
                    x: leftAnkleEndPoint.x + footWidth,
                    y: leftAnkleEndPoint.y)
                path.addLine(to: rightAngleEndPoint)
                
                let rightArmPitPoint = CGPoint(
                    x: rightAngleEndPoint.x,
                    y: rightAngleEndPoint.y - armPitToAnkleLength)
                path.addLine(to: rightArmPitPoint)
                
                let rightHandStartPoint = CGPoint(
                    x: rightArmPitPoint.x,
                    y: rightArmPitPoint.y + innerArmLength)
                path.addLine(to: rightHandStartPoint)
                
                let rightHandEndPoint = CGPoint(
                    x: rightHandStartPoint.x + handRadius,
                    y: rightHandStartPoint.y)
                let rightHandControlPoint = CGPoint(
                    x: rightHandStartPoint.x + (handRadius/2),
                    y: rightHandStartPoint.y + handRadius)
                path.addQuadCurve(
                    to: rightHandEndPoint,
                    control: rightHandControlPoint)
                
                let rightShoulderStartPoint = CGPoint(
                    x: rightHandEndPoint.x,
                    y: rightHandEndPoint.y - outerArmLength)
                path.addLine(to: rightShoulderStartPoint)

                let rightShoulderEndPoint = CGPoint(
                    x: rightShoulderStartPoint.x - (radiusOfShoulder * 2),
                    y: rightShoulderStartPoint.y - (radiusOfShoulder * 2))
                let rightShoulderControlPoint = CGPoint(
                    x: rightShoulderStartPoint.x ,
                    y: rightShoulderStartPoint.y - (radiusOfShoulder * 2))
                path.addQuadCurve(to: rightShoulderEndPoint, control: rightShoulderControlPoint)
                
                let rightTrapEndPoint = CGPoint(
                    x: w/2,
                    y: rightShoulderEndPoint.y)
                path.addLine(to: rightTrapEndPoint)
                
            }
            .stroke(Color.blue, lineWidth: self.lineWidth)
        }
    }
}

struct Person_Previews: PreviewProvider {
    static var previews: some View {
        Person(lineWidth: 5)
    }
}
