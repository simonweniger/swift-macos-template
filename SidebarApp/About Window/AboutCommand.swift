import SwiftUI

struct AboutCommand: Commands {

    @Environment(\.openWindow) private var openWindow

    var body: some Commands {
        // Replace the About window menu option.
        CommandGroup(replacing: .appInfo) {
            Button("About \(Bundle.main.name)") {
                openWindow(id: "about")
            }
        }
    }
}
