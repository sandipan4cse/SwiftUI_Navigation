
import SwiftUI

struct ScreenOne: View {
    @State var nextScreen = false
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color(hex: 0xf5d5d8),Color(hex: 0xf59aa3)], startPoint: .topLeading, endPoint: .bottomTrailing)
            VStack{
                Text("Hello User, This is Screen One.")
                    .padding()
                NavigationLink(
                    destination: ScreenTwo(),
                    isActive: $nextScreen){
                        Button("Click to move Screen Two", action: {
                            nextScreen = true
                        }).foregroundColor(.black)
                            .fontWeight(.bold)
                    }
            }
        }.ignoresSafeArea(.all)
            .navigationTitle("Screen One")
            .navigationBarItems(leading: BackButton())
            .navigationBarBackButtonHidden(true)
        
    }
}
