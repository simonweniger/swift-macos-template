import SwiftUI

struct PaneBackground: View {

    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        if colorScheme == .dark {
            Color.clear
                .ignoresSafeArea()
        } else {
            Color.white
                .ignoresSafeArea()
        }
    }
}

#Preview {
    PaneBackground()
}
