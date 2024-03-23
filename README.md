# SwiftUI Component Library

Welcome to the RudoApps component library for iOS in SwiftUI! Here you will find a collection of reusable components designed to simplify iOS app development with SwiftUI.

## Available Components

### CustomButton

The `CustomButton` is a customizable button that allows you to easily adapt its appearance and behavior according to your needs. You can configure different styles, colors, and actions to create unique and attractive buttons in your applications.

#### Usage Example

```swift
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

```

## Installation

### Swift Package Manager (SPM)
You can integrate this library using Swift Package Manager by adding the repository URL as a package in your project.

1. In Xcode, select File > Swift Packages > Add Package Dependency.
2. Paste the ios-components repository URL into the search field and press Enter.
3. Select the latest available version.
4. Follow the on-screen instructions to complete the integration.

```swift
dependencies: [
    .package(url: "https://github.com/rudoapps/ios-components.git", from: "1.0.0")
]
```

## Contributions
Contributions are welcome! If you have ideas for new components or improvements for existing ones, feel free to open an issue or submit a pull request on the GitHub repository.

## Contact
For any questions or comments, you can contact the RudoApps team via email or visit our website at www.rudoapps.com.

## License
This library is available under the MIT license. See the LICENSE file for more details.
