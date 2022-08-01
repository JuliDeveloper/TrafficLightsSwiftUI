//
//  ContentView.swift
//  TrafficLights
//
//  Created by Julia Romanenko on 01.08.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var currentLight = CurrentLight.red
    @State private var opacityRed = 0.2
    @State private var opacityGreen = 0.2
    @State private var opacityYellow = 0.2
    @State private var titleButton = "START"

    var body: some View {
        ZStack {
            Color(uiColor: .darkGray)
                .ignoresSafeArea()
            stackForElements
        }
    }
    
    private var redCircle: some View {
        ColorCircleView(color: .red)
    }
    
    private var yellowCircle: some View {
        ColorCircleView(color: .yellow)
    }
    
    private var greenCircle: some View {
        ColorCircleView(color: .green)
    }
    
    private var stackForElements: some View {
        VStack {
            redCircle
                .opacity(opacityRed)
                .padding(.top, 20.0)
            yellowCircle
                .opacity(opacityYellow)
                .padding(.top, 20.0)
            greenCircle
                .opacity(opacityGreen)
                .padding(.top, 20.0)
            Spacer()
            toggleButton
        }
        .padding(.bottom, 40.0)
    }
    
    private var toggleButton: some View {
        Button(action: {
            switchLights()
        }) {
            Text(titleButton)
                .foregroundColor(.white)
                .font(.title)
        }
            .frame(width: 200, height: 50)
            .background(Color.blue)
            .overlay(RoundedRectangle(cornerRadius: 8)
                .stroke(Color.white, lineWidth: 4))
    }
    
    private func switchLights() {
        titleButton = "NEXT"
        switch self.currentLight {
        case .red:
            opacityGreen = 0.2
            opacityRed = 1
            currentLight = .yellow
        case .yellow:
            opacityRed = 0.2
            opacityYellow = 1
            currentLight = .green
        case .green:
            opacityYellow = 0.2
            opacityGreen = 1
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
