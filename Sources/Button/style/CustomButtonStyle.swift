//
//  File.swift
//
//
//  Created by Fernando Salom Carratala on 23/3/24.
//

import Foundation
import SwiftUI

public class CustomButtonStyle: ObservableObject {
    public enum Mode {
        case text
        case icon
        case textAndIcon
        case iconAndText
    }

    public enum Border {
        case square
        case rounded
        case custom(CGFloat)

        var radius: CGFloat {
            switch self {
            case .square:
                return 0
            case .rounded:
                return 20
            case .custom(let cGFloat):
                return cGFloat
            }
        }
    }

    var backgroundColor: Color
    var foregroundColor: Color
    var borderColor: Color
    var mode: CustomButtonStyle.Mode
    var type: CustomButtonStyle.Border
    var isFullWidth: Bool

    public init(backgroundColor: Color,
                foregroundColor: Color,
                borderColor: Color,
                mode: CustomButtonStyle.Mode = .text,
                type: CustomButtonStyle.Border = .rounded,
                isFullWidth: Bool) {
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.borderColor = borderColor
        self.mode = mode
        self.type = type
        self.borderColor = borderColor
        self.isFullWidth = isFullWidth
    }
}
