import SwiftUI

struct Pgone: View {
    var body: some View {
        VStack {
            Image("Oak") // Replace with your image name
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 400)
                .padding(.top, 150)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white) // Optional: Set background color
    }
   
}

struct Pgone_Previews: PreviewProvider {
    static var previews: some View {
        Pgone()
    }
}

