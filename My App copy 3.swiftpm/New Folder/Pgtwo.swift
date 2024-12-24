import SwiftUI
struct Pgtwo: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        ZStack {
            Color(UIColor(red: 230/255, green: 177/255, blue: 107/255, alpha: 1.0))
                .ignoresSafeArea() // Fill the entire screen
            // Webcam Feed
            CameraViewRepresentable()
                .edgesIgnoringSafeArea(.all) // Make it full-screen
            // Buttons overlay
            VStack {
                Spacer() // Push buttons to the bottom
                
                HStack(spacing: 50) {
                    // First Button
                    Button(action: {
                        checkCameraPermission()
                    }) {
                        Image("Trash")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .foregroundColor(.blue)
                    }
                    
                    // Second Button
                    Button(action: {print(sharedVariable)
                      sharedVariable += 1
                    }) {
                        Image("Recycle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .foregroundColor(.blue)
                    }
                    
                    // Third Button
                    Button(action: {
                        print("Third trash button tapped!")
                    }) {
                        Image("Organic")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .foregroundColor(.blue)
                    }
                    
                }
                ZStack {
                    Button(action: {
                        print("Third trash button tapped!")
                    }) {
                        Image("Cont")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 190, height: 190)
                            .foregroundColor(.blue)
                            .offset(x: -110, y: -690)
                    }
                }
                
                .padding(.top, -80) // Add space at the bottom
                }
            
            }
        
    }
}
