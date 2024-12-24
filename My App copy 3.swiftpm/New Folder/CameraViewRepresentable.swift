import SwiftUI

struct CameraViewRepresentable: UIViewRepresentable {
    
    // Creates the UIView (CameraView)
    func makeUIView(context: Context) -> CameraView {
        return CameraView(frame: .zero) // Initialize CameraView
    }
    
    // Updates the UIView (Not needed in this case, but required by the protocol)
    func updateUIView(_ uiView: CameraView, context: Context) {
        // No updates needed here
    }
}

