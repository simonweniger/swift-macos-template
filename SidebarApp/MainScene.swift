import SwiftUI

struct MainScene: Scene {

    var body: some Scene {
        WindowGroup {
            MainView()
                .frame(minWidth: 400, minHeight: 300)
                .background(AlwaysOnTop())
        }
        .commands {
            AboutCommand()
            ExportCommands()
            AlwaysOnTopCommand()

            /// Add a menu with custom commands
            MyCommands()

            // Remove the "New Window" option from the File menu.
            CommandGroup(replacing: .newItem, addition: { })
        }

        Settings {
            SettingsWindow()
        }

        Window("About SidebarApp", id: "about") {
            AboutView(
                icon: NSApp.applicationIconImage ?? NSImage(),
                name: Bundle.main.name,
                version: Bundle.main.version,
                build: Bundle.main.buildVersion,
                copyright: Bundle.main.copyright,
                developerName: "<Insert name here>"
            )
            .frame(width: 500, height: 260)
        }
        .windowResizability(.contentSize)

        Window("Attributions", id: "attributions") {
            AttributionsView()
                .frame(minWidth: 500, minHeight: 300)
        }
        .windowResizability(.contentMinSize)
    }
}
