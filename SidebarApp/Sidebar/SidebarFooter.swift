import SwiftUI

struct SidebarFooter: View {
    var body: some View {
        VStack(spacing: 6) {
            Text("Sidebar Footer")
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
            Text("You could put stuff here.")
                .font(.footnote)
                .foregroundStyle(.tertiary)
        }
        .frame(height: 60)
        .frame(maxWidth: .infinity)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(8)
        .padding()
    }
}

#Preview {
    SidebarFooter()
}
