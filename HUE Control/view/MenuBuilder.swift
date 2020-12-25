import Cocoa
import Foundation

class Menu {
	
	private var menu: NSMenu

	private init(menu: NSMenu) {
		self.menu = menu
	}

	internal class Builder {
		private var statusBarItem: NSStatusItem!
		private let menu = NSMenu()
		
		func with(statusBarItem: NSStatusItem) -> Builder {
			self.statusBarItem = statusBarItem
			
			return self
		}
		
		func with(menuItems: [AmbientType], action: Selector) -> Builder {
			menuItems.forEach { item in
				menu.addItem(NSMenuItem(title: item.rawValue, action: action, keyEquivalent: ""))
			}
			
			return self
		}
		
		func build() -> Menu {
			menu.addItem(NSMenuItem(title: "Закрыть", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))
			statusBarItem.menu = menu

			return Menu(menu: menu)
		}
	}
}
