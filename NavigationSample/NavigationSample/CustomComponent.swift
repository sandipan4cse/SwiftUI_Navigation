

import SwiftUI

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

struct BackButton: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button(action: {
            self.dismiss()
        }) {
            HStack {
                Image(systemName: "arrow.backward")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.black)
            }
        }
    }
}

struct NavigationBarColor: ViewModifier {
    var backgroundColor: UIColor?

    init(backgroundColor: UIColor?) {
        self.backgroundColor = backgroundColor
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = backgroundColor
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }

    func body(content: Content) -> some View {
        content
    }
}

extension View {
    func navigationBarColor(_ backgroundColor: UIColor?) -> some View {
        self.modifier(NavigationBarColor(backgroundColor: backgroundColor))
    }
}
