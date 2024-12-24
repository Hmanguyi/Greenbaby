import SwiftUI

struct Pgpro: View {
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
                Image("Pro-1") // Replace with your image name
                    .resizable()
                    .scaledToFit()
                    .frame(width: 800, height: 800)
                    .padding(.top, 50)
            }
            
            // name
            Text("Henry.P III")
                .font(.custom("ByteBounce", size: 95)) // Use custom font
                .foregroundColor(.white) // Ensure it contrasts with the background
                .padding() // Add padding for spacing
                .frame(maxWidth: .infinity, alignment: .top) // Align text at the top
                 .offset(x: 0, y: -269)
            
            
            
            // stats
            Text("Thisgggg \nis\nanother\nline of\ntext.\ng")
                .font(.custom("ByteBounce", size: 46)) // Use custom font
                .foregroundColor(.white) // Ensure it contrasts with the background
                .padding() // Add padding for spacing
                .frame(maxWidth: .infinity, alignment: .top) // Align text at the top
                .offset(x: -95, y: -110)
            
            //des
            Text("des")
                .font(.custom("ByteBounce", size: 55)) // Use custom font
                .foregroundColor(.white) // Ensure it contrasts with the background
                .padding() // Add padding for spacing
                .frame(maxWidth: .infinity, alignment: .top) // Align text at the top
                .offset(x:-145 , y: 20)
            
            
            
            
            //des text
            Text("Thisgggggggggggggggg\nisgggg\nanother\nline of\ntext.")
                .font(.custom("ByteBounce", size: 28)) // Use custom font
                .foregroundColor(.white) // Ensure it contrasts with the background
                .padding() // Add padding for spacing
                .frame(maxWidth: .infinity, alignment: .top) // Align text at the top
                .offset(x:-65 , y: 90)
            
            
            //consistent
            Text("consistent")
                .font(.custom("ByteBounce", size: 28)) // Use custom font
                .foregroundColor(.white) // Ensure it contrasts with the background
                .padding() // Add padding for spacing
                .frame(maxWidth: .infinity, alignment: .top) // Align text at the top
                .offset(x:-125 , y: 400)
            
            
            
            
            //accurate
            Text("accurate")
                .font(.custom("ByteBounce", size: 28)) // Use custom font
                .foregroundColor(.white) // Ensure it contrasts with the background
                .padding() // Add padding for spacing
                .frame(maxWidth: .infinity, alignment: .top) // Align text at the top
                .offset(x:140 , y: 400)
            
            
            
            
            //activity
            Text("activity")
                .font(.custom("ByteBounce", size: 28)) // Use custom font
                .foregroundColor(.white) // Ensure it contrasts with the background
                .padding() // Add padding for spacing
                .frame(maxWidth: .infinity, alignment: .top) // Align text at the top
                .offset(x:5, y: 190)
            
            
            
            
            //Min
            Text("Min\nX")
                .font(.custom("ByteBounce", size: 40)) // Use custom font
                .foregroundColor(.white) // Ensure it contrasts with the background
                .padding() // Add padding for spacing
                .frame(maxWidth: .infinity, alignment: .top) // Align text at the top
                .offset(x:130 , y: 65)
            
            
            //Meal
            Text("Meals\nX")
                .font(.custom("ByteBounce", size: 40)) // Use custom font
                .foregroundColor(.white) // Ensure it contrasts with the background
                .padding() // Add padding for spacing
                .frame(maxWidth: .infinity, alignment: .top) // Align text at the top
                .offset(x:145 , y: 145)
            
            
            
            
            
            Triangle(
                point1: CGPoint(x: 100, y: 25),  // Top point
                point2: CGPoint(x: 0, y: 200), // Bottom-left point
                point3: CGPoint(x: 200, y: 200) // Bottom-right point
            )
            .fill(Color.green.opacity(0.5)) // Semi-transparent fill
            .frame(width: 200, height: 200) // Adjust size
            .offset(x: 5, y: 293)
            
            
            
            
            // to be countuned button 
            Button(action: {
                print("Semi-transparent square button tapped!")
            }) {
                Rectangle() // Use a Rectangle shape for the button's look
                    .fill(Color.blue.opacity(0)) // Semi-transparent blue background
                    .frame(width: 200, height: 30) // Square size
                    
            }
            .offset(x: -80, y: -335)
            
            
        }
    }
}

struct Pgpro_Previews: PreviewProvider {
    static var previews: some View {
        Pgpro()
    }
}

