//
//  ContentView.swift
//  demo
//
//  Created by Fernando Salom Carratala on 22/3/24.
//

import SwiftUI
import ios_components

struct ContentView: View {
    var buttonStyle = CustomButtonStyle(backgroundColor: .red,
                                        foregroundColor: .black,
                                        borderColor: .blue,
                                        mode: .text,
                                        text: "Presiona",
                                        isFullWidth: true,
                                        isDisabled: false) {

    }
    var body: some View {
        VStack {            
            CustomButton(style: buttonStyle)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
