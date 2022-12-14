//
//  CircleView.swift
//  TrafficLights
//
//  Created by Julia Romanenko on 01.08.2022.
//

import SwiftUI

struct ColorCircleView: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .blue, opacity: 1)
    }
}
