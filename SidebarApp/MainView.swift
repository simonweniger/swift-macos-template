import SwiftUI

struct MainView: View {

    @State private var selection: SidebarPane? = nil

    var body: some View {
        NavigationSplitView {
            SidebarList(selection: $selection)
        } detail: {
            DetailView(selection: selection)
        }
    }
}

// MARK: - Detail View

private struct DetailView: View {

    let selection: SidebarPane?

    var body: some View {
        switch selection {
        case .helloWorld:
            HelloWorldPane()
        case .whatsUp:
            WhatsUpPane()
        case .moreStuff:
            MoreStuffPane()
        case nil:
            EmptyPane()
        }
    }
}

#Preview {
    MainView()
}
