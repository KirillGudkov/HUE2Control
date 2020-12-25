
import Combine
import DynamicColor
import Foundation

public class SettingsViewModel: ObservableObject {
	var subscriptions: Set<AnyCancellable> = []

	let category: Category
	
	init(category: Category) {
		self.category = category
	}
	
	func save(selectedColor: DynamicColor) {
		let color = String(selectedColor.toHexString().dropFirst(1))
		ShellHelper.shell(launchPath: "/bin/zsh", arguments: [
			"/usr/local/bin/liquidctl set led1 color \(category.value) \(color) && /usr/local/bin/liquidctl set led2 color \(category.value) \(color)"
		])
	}
	
	func addToFavorite(selectedColor: DynamicColor) {
		
	}
}
