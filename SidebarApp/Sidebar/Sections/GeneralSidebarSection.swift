import SwiftUI

struct GeneralSidebarSection: View {
    
    @Binding var selection: SidebarPane?
    
    var body: some View {
        
        Section(header: Text("General")) {
			
			NavigationLink {
				HelloWorldPane()
			} label: {
				Label("Hello, World!", systemImage: "text.bubble")
			}
			
			NavigationLink {
				WhatsUpPane()
			} label: {
				Label("What's Up?", systemImage: "questionmark.app.dashed")
			}
        }
    }
}

struct GeneralSidebarSection_Previews: PreviewProvider {
    static var previews: some View {
        GeneralSidebarSection(selection: .constant(.helloWorld))
    }
}
