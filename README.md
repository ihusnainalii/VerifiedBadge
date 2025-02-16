# VerifiedBadge

## Overview
`VerifiedBadge` is a SwiftUI view that displays a badge with a customizable center content. The badge consists of rotating capsule shapes arranged radially around the content to create a visual effect similar to a verification badge.

## Features
- Customizable center content via a `ViewBuilder` closure.
- Dynamic layout that scales based on the available space.
- Uses `GeometryReader` to size and position elements correctly.
- Supports easy integration into any SwiftUI project.

## Installation
Simply add the `VerifiedBadge` struct to your SwiftUI project and use it as a reusable component.

## Preview
![Screenshot](https://github.com/ihusnainalii/VerifiedBadge/blob/main/screenshot/Simulator%20Screenshot%20-%20iPhone%2016%20Pro%20Max.png)

## Usage
```swift
import SwiftUI

struct ContentView: View {
    var body: some View {
        VerifiedBadge {
            Image(systemName: "checkmark.seal.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(.blue)
        }
        .frame(width: 100, height: 100)
    }
}
```

## API Documentation
### Initializer
```swift
public init(@ViewBuilder content: @escaping () -> Content)
```
- `content`: A `ViewBuilder` closure that defines the content to be placed at the center of the badge.

### Body
```swift
public var body: some View
```
The main SwiftUI view structure that arranges capsules radially and places the custom content at the center.

## Customization
You can customize the badge appearance by modifying the capsule shape properties, rotation angles, or adding additional styling to the inner content.

## Example
A badge with a text label:
```swift
VerifiedBadge {
    Text("Verified")
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .background(Color.blue)
        .clipShape(Circle())
}
.frame(width: 100, height: 100)
```

## License
This component is open-source and free to use in any SwiftUI project.
