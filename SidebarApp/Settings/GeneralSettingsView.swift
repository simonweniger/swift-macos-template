import SwiftUI

struct GeneralSettingsTab: View {

    @AppStorage("settings.general.name") private var name: String = ""

    var body: some View {
        Form {
            Section {
                TextField("Name:", text: $name)
                    .onSubmit {
                        print("On submit!")
                    }
                Text("This should describe the text field.")
                    .font(.caption)
                Button("Apply") {
                    print("Apply!")
                }
            }
        }
        .padding(20)
    }
}

#Preview {
    GeneralSettingsTab()
}
