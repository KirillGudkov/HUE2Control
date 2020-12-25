import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
	var statusBarItem: NSStatusItem!
	
	var menu: Menu!
	
	func applicationDidFinishLaunching(_ notification: Notification) {
		self.statusBarItem = NSStatusBar.system.statusItem(withLength: CGFloat(NSStatusItem.variableLength))
		if let button = self.statusBarItem.button {
			button.image = NSImage(named: "menu_icon")?.tint(color: NSColor(named: "themed_color") ?? .white)
		}
		
		menu = Menu.Builder()
			.with(statusBarItem: statusBarItem)
			.with(menuItems: [.on, .off, .blue, .red, .green, .breath], action: #selector(setAmbientLight(_:)))
			.build()
	}
	
	@objc
	private func setAmbientLight(_ sender: NSMenuItem) {
		ShellHelper.shell(launchPath: "/bin/zsh", arguments: [sender.title])
	}
}
