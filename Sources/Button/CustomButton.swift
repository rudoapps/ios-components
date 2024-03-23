import SwiftUI

public struct CustomButton: View {
    @ObservedObject public var style: CustomButtonStyle

    @State var isPressed = false

    let defaultIcon = Image(systemName: "star")

    public init(style: CustomButtonStyle, completion: (() -> Void)? = nil) {
        self.style = style
        //self.style.completion = completion ?? self.model.completion
    }

    public var body: some View {
        Button {
            if !style.isDisabled { style.completion?() }
        } label: {
            HStack(spacing: 8) {
                if style.mode != .icon && !style.text.isEmpty {
                    Text(style.text)
                        .cornerRadius(2)
                        .font(.title)
                        .foregroundColor(style.foregroundColor)
                }
                if style.mode == .icon {
                    defaultIcon
                        .resizable()
                        .foregroundColor(style.foregroundColor)
                        .frame(width: 16, height: 16)
                }
            }
            .padding(EdgeInsets(top: 10, leading: 10,
                                bottom: 10, trailing: 10))
            .frame(maxWidth: style.isFullWidth ? .infinity : .none)
            .border(style.borderColor, width: 2)
            .background(style.backgroundColor)
            .contentShape(Rectangle())
            .cornerRadius(2)
        }
        //.buttonStyle(CustomButtonStyle(button: self))
    }
}
