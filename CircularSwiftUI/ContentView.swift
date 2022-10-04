//
//  ContentView.swift
//  CircularSwiftUI
//
//  Created by aykut ipek on 4.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstCircularPersentage : Double = 0
    @State var secondCircularPersentage : Double = 0
    @State var thirdCircularPersentage : Double = 0
    var body: some View {
        ZStack{
            Circular(lineWidth: 40, backGroundColor: Color.blue.opacity(0.2), foreGroundColor: Color.blue, percentage: firstCircularPersentage)
            .frame(width: 350,height: 350)
            .onTapGesture {
                if self.firstCircularPersentage == 0{
                    self.firstCircularPersentage = 50
                }else{
                    self.firstCircularPersentage = 0
                }
            }
            Circular(lineWidth: 40, backGroundColor: Color.red.opacity(0.2), foreGroundColor: Color.red, percentage: secondCircularPersentage)
            .frame(width: 250,height: 250)
            .onTapGesture {
                if self.secondCircularPersentage == 0{
                    self.secondCircularPersentage = 75
                }else{
                    self.secondCircularPersentage = 0
                }
            }
            Circular(lineWidth: 40, backGroundColor: Color.green.opacity(0.2), foreGroundColor: Color.green, percentage: thirdCircularPersentage)
            .frame(width: 150,height: 150)
            .onTapGesture {
                if self.thirdCircularPersentage == 0{
                    self.thirdCircularPersentage = 100
                }else{
                    self.thirdCircularPersentage = 0
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
