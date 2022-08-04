//
//  ChangeColorButton.swift
//  TrafficLights
//
//  Created by Julia Romanenko on 04.08.2022.
//

import SwiftUI

struct ChangeColorButton: View {
    
    let title: String
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                .font(.title)
                .fontWeight(.bold)
        }
            .frame(width: 200, height: 50)
            .background(Color.blue)
            .overlay(RoundedRectangle(cornerRadius: 8)
                .stroke(Color.white, lineWidth: 4))
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorButton(title: "START", action: {})
    }
}
