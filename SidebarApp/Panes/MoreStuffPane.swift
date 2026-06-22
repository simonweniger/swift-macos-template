import SwiftUI

struct MoreStuffPane: View {

    var body: some View {
        Pane {
            DropTarget { urls in
                for url in urls {
                    print("File was dropped: \(url.path)")
                }
                return !urls.isEmpty
            }
            .frame(width: 220, height: 140)
            .overlay(Text("Drop files here"))
        }
        .navigationSubtitle("More Stuff")
    }
}

#Preview {
    MoreStuffPane()
}
