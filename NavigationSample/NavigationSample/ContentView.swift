
import SwiftUI

struct ContentView: View {
    @State var nextScreen = false
    var body: some View {
        NavigationView {
            ZStack{
                LinearGradient(colors: [Color(hex: 0xf5d5d8),Color(hex: 0xf59aa3)], startPoint: .topLeading, endPoint: .bottomTrailing)
                VStack{
                    Text("Hello User, This is Home Screen.")
                        .padding()
                    NavigationLink(
                        destination: ScreenOne(),
                        isActive: $nextScreen){
                            Button("Click to move Screen One", action: {
                                nextScreen = true
                            }).foregroundColor(.black)
                                .fontWeight(.bold)
                        }
                }
            }.edgesIgnoringSafeArea(.all)
                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.inline)
        }
        .navigationBarColor(.gray)
        .navigationBarBackButtonHidden(true)
    }
}




