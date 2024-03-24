import Foundation
import SwiftUI

public struct FlatButtonStyle: ButtonStyle {
    public init() { }
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
            .buttonStyle(.borderedProminent)
    }
}
