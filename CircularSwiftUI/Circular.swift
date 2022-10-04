//
//  Circular.swift
//  CircularSwiftUI
//
//  Created by aykut ipek on 4.10.2022.
//

import SwiftUI

struct Circular: View {
    
    let lineWidth : CGFloat
    let backGroundColor : Color
    let foreGroundColor : Color
    let percentage : Double
    
    var body: some View {
        GeometryReader{ geometry in
            ZStack{
                CircularShape()
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(backGroundColor)
                CircularShape(percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(foreGroundColor)
            }
            .animation(.easeIn(duration: 1.0), value: percentage)
            .padding(lineWidth/1.5)
        }
    }
}

struct Circular_Previews: PreviewProvider {
    static var previews: some View {
        Circular(lineWidth: 10, backGroundColor: .red, foreGroundColor: .green, percentage: 50)
    }
}
