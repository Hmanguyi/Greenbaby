import SwiftUI

struct Pgpic: View {
    init() {
        registerFont(withName: "ByteBounce", fileExtension: "ttf")
    }
    
    var body: some View {
        
         CameraViewRepresentable()
        
        ZStack {
            // Background color
            Color.green
                .ignoresSafeArea() // Fill the entire screen
            
            // Image layer
            VStack {
                Image("Pic") // Replace with your image name
                    .resizable()
                    .scaledToFit()
                    .frame(width: 800, height: 800)
                    .padding(.top, 50)
            }
            
            
            ///cont 
            Button(action: {
                print("Semi-transparent square button tapped!")
            }) {
                Rectangle() // Use a Rectangle shape for the button's look
                    .fill(Color.blue.opacity(1)) // Semi-transparent blue background
                    .frame(width: 200, height: 30) // Square size
                
            }
            .offset(x: -80, y: -335)
            
            ///trash 
            Button(action: {
                print("Semi-transparent square button tapped!")
            }) {
                Rectangle() // Use a Rectangle shape for the button's look
                    .fill(Color.blue.opacity(0.5)) // Semi-transparent blue background
                    .frame(width: 69, height: 100) // Square size
                
            }
            .offset(x: -110, y: 200)
            
            
            
            
            
            
            ///rec 
            Button(action: {
                print("Semi-transparent square button tapped!")
            }) {
                Rectangle() // Use a Rectangle shape for the button's look
                    .fill(Color.blue.opacity(0.5)) // Semi-transparent blue background
                    .frame(width: 80, height: 100) // Square size
                
            }
            .offset(x: 0, y: 200)
            
            
            
            
            
            ///org 
            Button(action: {
                print("Semi-transparent square button tapped!")
            }) {
                Rectangle() // Use a Rectangle shape for the button's look
                    .fill(Color.blue.opacity(0.5)) // Semi-transparent blue background
                    .frame(width: 69, height: 100) // Square size
                
            }
            .offset(x: 110, y: 200)
            
            
            
            
            
    
            
            ///cam
            Button(action: {
                print("Semi-transparent square button tapped!")
            }) {
                Rectangle() // Use a Rectangle shape for the button's look
                    .fill(Color.blue.opacity(0.5)) // Semi-transparent blue background
                    .frame(width: 169, height: 100) // Square size
                
            }
            .offset(x: 0, y: 345)
            
            
        }
        
    }
}

struct Pgpic_Previews: PreviewProvider {
    static var previews: some View {
        Pgpic()
    }
}


