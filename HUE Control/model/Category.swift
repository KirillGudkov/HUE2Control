import Foundation

enum Category: String, CaseIterable, Identifiable {
	var id: String {
		return rawValue
	}
	
	case fixed
	case super_fixed
	case fading
	case spectrum_wave
	case backwards_spectrum_wave
	case marquee
	case backwards_marquee
	case covering_marquee
	case covering_backwards_marquee
	case alternating
	case moving_alternating
	case backwards_moving_alternating
	case pulse
	case breathing
	case super_breathing
	case candle
	case starry_night
	case rainbow_flow
	case backwards_rainbow_flow
	case super_rainbow
	case backwards_super_rainbow
	case rainbow_pulse
	case backwards_rainbow_pulse
	case wings
	
	var name: String {
		switch self {
			case .fixed: return "Fixed"
			case .super_fixed: return "Super fixed"
			case .fading: return "Fading"
			case .spectrum_wave: return "Spectrum wave"
			case .backwards_spectrum_wave: return "Backwards spectrum wave"
			case .marquee: return "Marquee"
			case .backwards_marquee: return "Backwards marquee"
			case .covering_marquee: return "Covering marquee"
			case .covering_backwards_marquee: return "Covering backwards marquee"
			case .alternating: return "Alternating"
			case .moving_alternating: return "Moving alternating"
			case .backwards_moving_alternating: return "Backwards moving alternating"
			case .pulse: return "Pulse"
			case .breathing: return "Breathing"
			case .super_breathing: return "Super breathing"
			case .candle: return "Candle"
			case .starry_night: return "Starry night"
			case .rainbow_flow: return "Rainbow flow"
			case .backwards_rainbow_flow: return "Backwards rainbow flow"
			case .super_rainbow: return "Super rainbow"
			case .backwards_super_rainbow: return "Backwards super rainbow"
			case .rainbow_pulse: return "Rainbow pulse"
			case .backwards_rainbow_pulse: return "Backwards rainbow pulse"
			case .wings: return "Wings"
		}
	}
	
	var value: String {
		switch self {
			case .fixed: return "fixed"
			case .super_fixed: return "super-fixed"
			case .fading: return "fading"
			case .spectrum_wave: return "spectrum-wave"
			case .backwards_spectrum_wave: return "backwards-spectrum-wave"
			case .marquee: return "marquee"
			case .backwards_marquee: return "backwards-marquee"
			case .covering_marquee: return "covering-marquee"
			case .covering_backwards_marquee: return "covering-backwards-marquee"
			case .alternating: return "alternating"
			case .moving_alternating: return "moving-alternating"
			case .backwards_moving_alternating: return "backwards-moving-alternating"
			case .pulse: return "pulse"
			case .breathing: return "breathing"
			case .super_breathing: return "super-breathing"
			case .candle: return "candle"
			case .starry_night: return "starry-night"
			case .rainbow_flow: return "rainbow_-low"
			case .backwards_rainbow_flow: return "backwards-rainbow-flow"
			case .super_rainbow: return "super-rainbow"
			case .backwards_super_rainbow: return "backwards-super-rainbow"
			case .rainbow_pulse: return "rainbow-pulse"
			case .backwards_rainbow_pulse: return "backwards-rainbow-pulse"
			case .wings: return "wings"
		}
	}
}
