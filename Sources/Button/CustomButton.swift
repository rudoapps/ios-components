import SwiftUI

public struct CustomButton: View {
    @ObservedObject public var style: CustomButtonStyle
    @State var isPressed = false

    private var text: String
    var completion: (() -> Void)?
    

    let defaultIcon = Image(systemName: "star")

    public init(_ text: String,
                style: CustomButtonStyle,
                completion: (() -> Void)? = nil) {
        self.style = style
        self.text = text
    }

    public var body: some View {
        Button {
            completion?()
        } label: {
            HStack(spacing: 8) {
                if style.mode != .icon && !text.isEmpty {
                    Text(text)
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
            .cornerRadius(style.type.radius)
        }
        //.buttonStyle(CustomButtonStyle(button: self))
    }
}
