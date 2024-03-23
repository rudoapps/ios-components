//
//  File.swift
//  
//
//  Created by Fernando Salom Carratala on 23/3/24.
//

import Foundation
import SwiftUI

public enum CustomButtonMode {
    case text
    case icon
    case textAndIcon
    case iconAndText
}

public class CustomButtonStyle: ObservableObject {
    var backgroundColor: Color
    var foregroundColor: Color
    var borderColor: Color
    var mode: CustomButtonMode
    var text: String
    var isFullWidth: Bool
    var isDisabled: Bool
    var completion: (() -> Void)?

    public init(backgroundColor: Color,
         foregroundColor: Color,
         borderColor: Color,
         mode: CustomButtonMode = .text,
         text: String,
         isFullWidth: Bool,
         isDisabled: Bool,
         completion: (() -> Void)?) {
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.mode = mode
        self.text = text
        self.borderColor = borderColor
        self.isFullWidth = isFullWidth
        self.isDisabled = isDisabled
        self.completion = completion
    }
}
