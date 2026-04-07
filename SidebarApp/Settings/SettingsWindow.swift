import SwiftUI

struct SettingsWindow: View {

    var body: some View {
        TabView {
            Tab("General", systemImage: "gear") {
                GeneralSettingsTab()
            }
        }
        .padding(20)
        .frame(width: 375, height: 150)
    }

    /// Show settings programmatically
    static func show() {
        NSApp.sendAction(Selector(("showSettingsWindow:")), to: nil, from: nil)
    }
}

#Preview {
    SettingsWindow()
}
