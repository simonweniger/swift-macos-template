import SwiftUI

struct GeneralSidebarSection: View {

    var body: some View {
        Section("General") {
            Label("Hello, World!", systemImage: "text.bubble")
                .tag(SidebarPane.helloWorld)

            Label("What's Up?", systemImage: "questionmark.app.dashed")
                .tag(SidebarPane.whatsUp)
        }
    }
}

#Preview {
    List {
        GeneralSidebarSection()
    }
    .listStyle(.sidebar)
}
