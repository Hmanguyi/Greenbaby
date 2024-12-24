import SwiftUI

struct Pgdic: View {
    init() {
        registerFont(withName: "ByteBounce", fileExtension: "ttf")
    }
    
    var body: some View {
        
        
        ZStack {
            // Background color
            Color.green
                .ignoresSafeArea() // Fill the entire screen
            
            // Image layer
            VStack {
                Image("Dic") // Replace with your image name
                    .resizable()
                    .scaledToFit()
                    .frame(width: 800, height: 800)
                    .padding(.top, 50)
            }
            
            
            //Pic text
            Text("PIC")
                .font(.custom("ByteBounce", size: 95)) // Use custom font
                .foregroundColor(.white) // Ensure it contrasts with the background
                .padding() // Add padding for spacing
                .frame(maxWidth: .infinity, alignment: .top) // Align text at the top
                .offset(x: 0, y: -280)
            
            //Pic button
            Button(action: {
                print("Semi-transparent square button tapped!")
            }) {
                Rectangle() // Use a Rectangle shape for the button's look
                    .fill(Color.blue.opacity(0)) // Semi-transparent blue background
                    .frame(width: 300, height: 125) // Square size
                
            }
            .offset(x: -0, y: -253)
            
            
            
            
            
            
            
            
            //Pro text
            Text("PROFILE")
                .font(.custom("ByteBounce", size: 95)) // Use custom font
                .foregroundColor(.white) // Ensure it contrasts with the background
                .padding() // Add padding for spacing
                .frame(maxWidth: .infinity, alignment: .top) // Align text at the top
                .offset(x: 20, y: -100)
            
            //Pro button
            Button(action: {
                print("Semi")
            }) {
                Rectangle() // Use a Rectangle shape for the button's look
                    .fill(Color.blue.opacity(0)) // Semi-transparent blue background
                    .frame(width: 300, height: 125) // Square size
                
            }
            .offset(x: -0, y: -80)
            
            
            
            
            //Sch text
            Text("SCHOOL")
                .font(.custom("ByteBounce", size: 95)) // Use custom font
                .foregroundColor(.white) // Ensure it contrasts with the background
                .padding() // Add padding for spacing
                .frame(maxWidth: .infinity, alignment: .top) // Align text at the top
                .offset(x: 20, y: 80)
            
            //Sch button
            Button(action: {
                print("Semi-transparent square button tapped!")
            }) {
                Rectangle() // Use a Rectangle shape for the button's look
                    .fill(Color.blue.opacity(0)) // Semi-transparent blue background
                    .frame(width: 300, height: 125) // Square size
                
            }
            .offset(x: -0, y: 100)
            
            
           
            
            
            //Acc text
            Text("ACCOUNT")
                .font(.custom("ByteBounce", size: 95)) // Use custom font
                .foregroundColor(.white) // Ensure it contrasts with the background
                .padding() // Add padding for spacing
                .frame(maxWidth: .infinity, alignment: .top) // Align text at the top
                .offset(x: 20, y: 250)
            
            //Acc button
            Button(action: {
                print("Semi-transparent square button tapped!")
            }) {
                Rectangle() // Use a Rectangle shape for the button's look
                    .fill(Color.blue.opacity(0)) // Semi-transparent blue background
                    .frame(width: 300, height: 125) // Square size
                
            }
            .offset(x: -0, y: 269)
            
            
        }
        
    }
}

struct Pgdic_Previews: PreviewProvider {
    static var previews: some View {
        Pgdic()
    }
}



