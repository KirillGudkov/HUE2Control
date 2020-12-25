import SwiftUI

struct LightingToggle: View {
	@State private var isLightningOn = true
	
	var body: some View {
		return
			Toggle(isLightningOn ? "On" : "Off", isOn: $isLightningOn)
			.onTapGesture {
				if (isLightningOn) {
					// turn on
				} else {
					// turn off
				}
			}
	}
}
