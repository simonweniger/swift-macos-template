import SwiftUI

struct HelloWorldPane: View {

    var body: some View {
        Pane {
            VStack(spacing: 20) {
                Text("Hello, World!")
                AlwaysOnTopCheckbox()
            }
        }
        .navigationSubtitle("Hello, World!")
    }
}

#Preview {
    HelloWorldPane()
}
