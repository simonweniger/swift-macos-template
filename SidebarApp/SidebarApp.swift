import SwiftUI

@main
struct SidebarApp: App {

    var body: some Scene {
        MainScene()

        MenuBarExtra("SidebarApp", systemImage: "hammer") {
            MenuBarPopup()
        }
    }
}
