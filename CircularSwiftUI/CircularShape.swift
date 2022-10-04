//
//  CircularShape.swift
//  CircularSwiftUI
//
//  Created by aykut ipek on 4.10.2022.
//

import SwiftUI
import Foundation

struct CircularShape: Shape {
    
    var percent : Double
    var startAngle : Double
    
    typealias AnimatableData = Double
    var animatableData: Double {
        get{
            return percent
        }
        set{
            percent = newValue
        }
    }
    
    init(percent: Double = 100, startAngle: Double = -90) {
        self.percent = percent
        self.startAngle = startAngle
    }
    
    func path(in rect: CGRect) -> Path {
        
        let width = rect.width
        let height = rect.height
        let radius = min(width, height) / 2
        let center = CGPoint(x: width / 2, y: height / 2)
        let endAngles = (self.percent / 100 * 360) + self.startAngle
        return Path { path in
            path.addArc(center: center, radius: radius, startAngle: Angle(degrees: startAngle), endAngle: Angle(degrees: endAngles), clockwise: false)
            
        }
    }
}

