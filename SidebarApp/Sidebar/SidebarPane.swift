import Foundation

enum SidebarPane: Hashable, Identifiable, CaseIterable {

    // MARK: General Section

    case helloWorld
    case whatsUp

    // MARK: More Section

    case moreStuff

    var id: Self { self }
}
