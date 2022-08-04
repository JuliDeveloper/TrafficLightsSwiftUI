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
    @State private var titleButton = "START"
    
    private var stackForElements: some View {
        VStack(spacing: 20) {
            ColorCircleView(color: .red,
                            opacity: currentLight == .red ? 1 : 0.2)
            ColorCircleView(color: .yellow,
                            opacity: currentLight == .yellow ? 1 : 0.2)
            ColorCircleView(color: .green,
                            opacity: currentLight == .green ? 1 : 0.2)
            Spacer()
            ChangeColorButton(title: titleButton,
                              action: switchLights)
        }
        .padding()
    }
    
    private func switchLights() {
        titleButton = "NEXT"
        switch currentLight {
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
}

extension ContentView {
    var body: some View {
        ZStack {
            Color(uiColor: .darkGray)
                .ignoresSafeArea()
            stackForElements
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
