//
//  CircleView.swift
//  TrafficLights
//
//  Created by Julia Romanenko on 01.08.2022.
//

import SwiftUI

struct ColorCircleView: View {
    var color: Color
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 120, height: 120)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .blue)
    }
}
