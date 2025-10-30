//
//  DataElement.swift
//  MoexDto
//
//  Created by Victor Chernykh on 22.07.2024.
//

import Foundation

/// We use Enum to represent data that can be of different types (String, Double, Int, nil).
public enum DataElement: Codable, Sendable {
	case string(String)
	case array([Decimal])
	case int(Int)
	case null

	// Encode.
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()
		switch self {
		case .string(let value):
			try container.encode(value)
		case .array(let value):
			try container.encode(value)
		case .int(let value):
			try container.encode(value)
		case .null:
			try container.encodeNil()
		}
	}

	// Decode.
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()
		if let value: String = try? container.decode(String.self) {
			self = .string(value)
			return
		}
		if let value: [Decimal] = try? container.decode([Decimal].self) {
			self = .array(value)
			return
		}
		if let value: Int = try? container.decode(Int.self) {
			self = .int(value)
			return
		}
		if container.decodeNil() {
			self = .null
			return
		}

		throw DecodingError.typeMismatch(
			DataElement.self,
			DecodingError.Context(
				codingPath: decoder.codingPath,
				debugDescription: "Wrong type for DataElement"
			)
		)
	}
}
