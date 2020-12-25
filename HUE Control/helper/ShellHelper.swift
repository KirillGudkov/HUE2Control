import Foundation

class ShellHelper {
	static func shell(launchPath path: String, arguments args: [String]) {
		let task = Process()
		task.launchPath = path
		var arguments = args
		arguments.insert("-i", at: 0)
		arguments.insert("-c", at: 1)
		task.arguments = arguments
		
		let pipe = Pipe()
		task.standardOutput = pipe
		task.standardError = pipe
		task.launch()
		
		pipe.fileHandleForReading.readDataToEndOfFile()
		task.waitUntilExit()
	}
}
