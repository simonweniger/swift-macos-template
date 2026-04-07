import SwiftUI

struct SidebarList: View {

    @Binding var selection: SidebarPane?

    @State private var searchText: String = ""

    var body: some View {
        List(selection: $selection) {
            GeneralSidebarSection()
            MoreSidebarSection()
        }
        .listStyle(.sidebar)
        .navigationSplitViewColumnWidth(min: 180, ideal: 200, max: 300)
        .safeAreaInset(edge: .bottom, spacing: 0) {
            SidebarFooter()
        }
        .searchable(text: $searchText, placement: .sidebar)
    }
}

#Preview {
    NavigationSplitView {
        SidebarList(selection: .constant(nil))
    } detail: {
        Text("Detail")
    }
}
