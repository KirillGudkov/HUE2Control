import SwiftUI

struct Sidebar: View {
	@State var selection: Category?
	
	var body: some View {
		List(Category.allCases) { category in
			NavigationLink(destination: ContentView(viewModel: SettingsViewModel(category: category)), tag: category, selection: self.$selection) {
				Text(category.name)
			}
		}
		.listStyle(SidebarListStyle())
		.frame(minWidth: 200, idealWidth: 200, maxWidth: 200, maxHeight: .infinity)
		.onAppear { self.selection = Category.allCases.first }
	}
}
