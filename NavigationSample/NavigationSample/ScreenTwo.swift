
import SwiftUI

struct ScreenTwo: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color(hex: 0xf5d5d8),Color(hex: 0xf59aa3)], startPoint: .topLeading, endPoint: .bottomTrailing)
            VStack{
                Text("Hello User, This is Screen Two.")
                    .padding()
                
            }
        }.ignoresSafeArea(.all)
            .navigationTitle("Screen Two")
            .navigationBarItems(leading: BackButton())
            .navigationBarBackButtonHidden(true)
    }
}

