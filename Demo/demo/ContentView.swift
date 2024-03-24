//
//  ContentView.swift
//  demo
//
//  Created by Fernando Salom Carratala on 22/3/24.
//

import SwiftUI
import ios_components

struct ContentView: View {
    let buttonStyle = CustomButtonStyle(
        backgroundColor: .red,
        foregroundColor: .blue,
        borderColor: .green,
        mode: .text,
        type: .square,
        isFullWidth: true)

    var body: some View {
        VStack {
            CustomButton("presioname", style: buttonStyle) {

            }
            Button {

            } label: {
                Text("Test")
            }
            .buttonStyle(FlatButtonStyle())

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
