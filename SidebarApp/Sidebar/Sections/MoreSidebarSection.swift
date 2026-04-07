import SwiftUI

struct MoreSidebarSection: View {

    var body: some View {
        Section("More") {
            Label("More Stuff", systemImage: "ellipsis.circle")
                .tag(SidebarPane.moreStuff)
        }
    }
}

#Preview {
    List {
        MoreSidebarSection()
    }
    .listStyle(.sidebar)
}
