import SwiftUI

struct ContentView: View {
	@ObservedObject var viewModel: SettingsViewModel

	@ViewBuilder
	var body: some View {
		Settings(viewModel: viewModel)
			.frame(minWidth: 600, minHeight: 650)
			.toolbar {
				ToolbarItem(placement: .automatic) {
					LightingToggle()
				}
				ToolbarItem(placement: .automatic) {
					Button(action: { toggleSideBar() }) {
						Image(systemName: "sidebar.left")
					}
					.keyboardShortcut("S", modifiers: .command)
				}
			}
			.navigationSubtitle("Control your lighting")
	}
	
	private func toggleSideBar() {
		NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
	}
}
