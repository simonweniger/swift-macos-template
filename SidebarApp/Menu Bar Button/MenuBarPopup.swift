import SwiftUI

struct MenuBarPopup: View {

    @Environment(\.openWindow) private var openWindow

    var body: some View {
        VStack(spacing: 16) {
            Text("Hello, World!")

            Button("About...") {
                openWindow(id: "about")
            }

            Divider()

            Button("Quit") {
                NSApp.terminate(nil)
            }
            .keyboardShortcut("q")
        }
        .frame(width: 200, height: 200)
    }
}

#Preview {
    MenuBarPopup()
}
