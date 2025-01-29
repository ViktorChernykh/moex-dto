//
//  DataElement.swift
//  
//
//  Created by Victor Chernykh on 22.07.2024.
//

import struct Foundation.Date

/// We use Enum to represent data that can be of different types (String, Double, Int, nil).
public enum DataElement: Codable, Sendable {
	case string(String)
	case array([Double])
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
		if let value = try? container.decode(String.self) {
			self = .string(value)
			return
		}
		if let value = try? container.decode([Double].self) {
			self = .array(value)
			return
		}
		if let value = try? container.decode(Int.self) {
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

public enum PriceElement: Codable, Sendable {
	case double(Double)
	case int(Int)

	// Encode.
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()
		switch self {
		case .int(let value):
			try container.encode(value)
		case .double(let value):
			try container.encode(value)
		}
	}

	// Decode.
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()
		if let value = try? container.decode(Int.self) {
			self = .int(value)
			return
		}
		if let value = try? container.decode(Double.self) {
			self = .double(value)
			return
		}

		throw DecodingError.typeMismatch(
			PriceElement.self,
			DecodingError.Context(
				codingPath: decoder.codingPath,
				debugDescription: "Wrong type for PriceElement"
			)
		)
	}
}
