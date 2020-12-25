import Cocoa
import SwiftUI

@main
struct HUE_ControlApp: App {
	
	@NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
	
	@Environment(\.scenePhase) var scenePhase
	
    var body: some Scene {
        WindowGroup {
            Container()
        }
		.onChange(of: scenePhase) { newScenePhase in
			switch newScenePhase {
				case .active:
					print("App is active")
				case .inactive:
					print("App is inactive")
				case .background:
					print("App is in background")
				@unknown default:
					print("Oh - interesting: I received an unexpected new value.")
			}
		}
    }
}
