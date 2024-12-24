import SwiftUI
import Foundation
import UIKit
import PlaygroundSupport



// AppState to manage shared state
// this is var that controls the pg
var sharedVariable: Int = 0






//this for the font 
// Function to register the font
func registerFont(withName name: String, fileExtension: String) {
    guard let fontURL = Bundle.main.url(forResource: name, withExtension: fileExtension) else {
        print("Font file \(name).\(fileExtension) not found in the bundle.")
        return
    }
    
    guard let fontData = try? Data(contentsOf: fontURL) else {
        print("Failed to load font data for \(name).\(fileExtension).")
        return
    }
    
    guard let provider = CGDataProvider(data: fontData as CFData) else {
        print("Failed to create data provider for font \(name).\(fileExtension).")
        return
    }
    
    guard let font = CGFont(provider) else {
        print("Failed to create CGFont for \(name).\(fileExtension).")
        return
    }
    
    var error: Unmanaged<CFError>?
    if !CTFontManagerRegisterGraphicsFont(font, &error) {
        print("Failed to register font \(name).\(fileExtension): \(String(describing: error))")
    } else {
        print("Font \(name).\(fileExtension) registered successfully!")
    }
}





// this for start pg timer
class AppState: ObservableObject {
    @Published var globalCount: Int = 0
    class MyClass {
        static var sharedVariable: Int = 0
    }

}








//rad tri class 
struct Triangle: Shape {
    var point1: CGPoint
    var point2: CGPoint
    var point3: CGPoint
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            // Map points relative to the provided rect
            let scaledPoint1 = CGPoint(x: rect.origin.x + point1.x, y: rect.origin.y + point1.y)
            let scaledPoint2 = CGPoint(x: rect.origin.x + point2.x, y: rect.origin.y + point2.y)
            let scaledPoint3 = CGPoint(x: rect.origin.x + point3.x, y: rect.origin.y + point3.y)
            
            // Start at the first point
            path.move(to: scaledPoint1)
            // Draw lines to the other points
            path.addLine(to: scaledPoint2)
            path.addLine(to: scaledPoint3)
            // Close the path to form a triangle
            path.closeSubpath()
        }
    }
}

