//
//  Message.swift
//
//
//  Created by Victor Chernykh on 22.07.2024.
//

import struct Foundation.CharacterSet
import struct Foundation.Data
import class Foundation.JSONDecoder

public struct AlgopackMessage: Codable, Sendable {
	public let title: String
	public let headers: [String: String]
	public let body: Snapshot?

	// A method for parsing a complete message.
	public static func decode(_ message: String) -> Self? {
		let parts: [String] = message.components(separatedBy: "\n\n")
		guard parts.count > 0 else {
			return nil
		}
		let header: String = parts[0]

		var title: String = .init()
		var headers: [String: String] = .init()
		header.split(separator: "\n").forEach { line in
			let components: [Substring.SubSequence] = line.split(separator: ":", maxSplits: 1)
			if components.count == 2 {
				headers[String(components[0])] = String(components[1])
			} else {
				title = String(components[0])
			}
		}
		guard parts.count == 2 else {
			return .init(title: title, headers: headers, body: nil)
		}
		// body
		guard let data: Data = parts[1].data(using: .utf8) else {
			return .init(title: title, headers: headers, body: nil)
		}
		guard let body: Snapshot = try? JSONDecoder().decode(Snapshot.self, from: data) else {
			return .init(title: title, headers: headers, body: nil)
		}
		return .init(title: title, headers: headers, body: body)
	}
}
