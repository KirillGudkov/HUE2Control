import SwiftUI

struct Container: View {
    var body: some View {
		NavigationView {
			Sidebar()
			ContentView(viewModel: SettingsViewModel(category: .fixed))
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Container()
    }
}
