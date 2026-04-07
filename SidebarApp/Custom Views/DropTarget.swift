import SwiftUI
import UniformTypeIdentifiers

struct DropTarget: View {

    let delegate: DropDelegate

    let types: [UTType]

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.black.opacity(0.2))
            RoundedRectangle(cornerRadius: 8)
                .strokeBorder(Color.white.opacity(0.2), style: StrokeStyle(lineWidth: 2, dash: [8, 4], dashPhase: 0))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .onDrop(of: types, delegate: delegate)
    }
}

#Preview {
    DropTarget(delegate: PreviewDropDelegate(), types: [UTType.fileURL])
}

private struct PreviewDropDelegate: DropDelegate {
    func performDrop(info: DropInfo) -> Bool { false }
}
