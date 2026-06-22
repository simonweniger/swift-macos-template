import SwiftUI

/// A reusable drop target that highlights while a drag hovers over it and
/// reports any dropped file URLs via the `onDrop` closure.
///
/// Uses the modern SwiftUI `dropDestination(for:)` API, so there's no need
/// for a custom `DropDelegate` or `NSItemProvider` plumbing.
struct DropTarget: View {

    /// Called with the dropped URLs. Return `true` if the drop was accepted.
    let onDrop: (_ urls: [URL]) -> Bool

    @State private var isTargeted = false

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .fill(.black.opacity(0.2))
            RoundedRectangle(cornerRadius: 8)
                .strokeBorder(
                    .white.opacity(isTargeted ? 0.6 : 0.2),
                    style: StrokeStyle(lineWidth: 2, dash: [8, 4])
                )
        }
        .dropDestination(for: URL.self) { urls, _ in
            onDrop(urls)
        } isTargeted: { isTargeted = $0 }
    }
}

#Preview {
    DropTarget { _ in true }
        .frame(width: 220, height: 140)
        .padding()
}
