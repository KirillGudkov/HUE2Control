import SwiftUI
import DynamicColor

struct GradientButtonStyle: ButtonStyle {
	func makeBody(configuration: Self.Configuration) -> some View {
		configuration.label
			.compositingGroup()
			.padding(.horizontal, 12)
			.padding(.vertical, 4)
			.background(
				RoundedRectangle(cornerRadius: 20).fill(
							configuration.isPressed ? Color.init(hexString: "#cccccc") : Color.init(hexString: "#f0f0f0")
				)
			)
	}
}

struct Settings: View {
	
	@ObservedObject var viewModel: SettingsViewModel
	
	@State private var selectedColor = DynamicColor.red

	@ViewBuilder
	var body: some View {
		VStack {
			VStack {
				HStack {
					HStack {
						Text(viewModel.category.name)
							.font(Font.system(size: 34, weight: .bold, design: .default))
						Button(action: { viewModel.addToFavorite(selectedColor: selectedColor) }) {
							Image(systemName: "suit.heart")
								.resizable()
								.foregroundColor(Color.red)
								.frame(width: 20, height: 20)
						}
						.buttonStyle(BorderlessButtonStyle())
						.padding(.leading, 8)
						.padding(.top, 4)
					}
					Spacer()
					Button(action: { viewModel.save(selectedColor: selectedColor) }){
						Text("SAVE")
							.foregroundColor(Color.accentColor)
					}
					.buttonStyle(GradientButtonStyle())
				}
			}
			VStack {
				Text(selectedColor.toHexString())
				ColorPickerRing(color: $selectedColor, strokeWidth: 20)
					.frame(width: 300, height: 300, alignment: .center)
			}
			.frame(minWidth: 0,
				   maxWidth: .infinity,
				   minHeight: 0,
				   maxHeight: .infinity,
				   alignment: .center
			)
		}
		.frame(minWidth: 0,
				maxWidth: .infinity,
				minHeight: 0,
				maxHeight: .infinity,
				alignment: .topLeading
		)
		.padding(24)
	}
}
