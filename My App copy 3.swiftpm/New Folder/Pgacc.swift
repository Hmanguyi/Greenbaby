import SwiftUI

struct Pgacc: View {
    init() {
        registerFont(withName: "ByteBounce", fileExtension: "ttf")
    }
    @State private var userInput: String = ""
    @State private var displayText: String = ""
    
    var body: some View {
        ZStack{
            Color(UIColor(red: 230/255, green: 177/255, blue: 107/255, alpha: 1.0))
                .ignoresSafeArea()
            VStack(spacing: 20) {
                TextField("Enter text here", text: $userInput)
                    .font(.custom("ByteBounce", size: 40))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button(action: {
                    displayText = "You entered: \(userInput)"
                }) {
                    Text("Submit")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .font(.custom("ByteBounce", size: 40))
                }
                
                Text(displayText)
                    .font(.custom("ByteBounce", size: 40))
                    .foregroundColor(.black)
                    .padding()
            }
            .padding()
        }
            
        }
        
}

struct Pgacc_Previews: PreviewProvider {
    static var previews: some View {
        Pgacc()
    }
}

