//
//  PriceElement.swift
//  moex-dto
//
//  Created by Victor Chernykh on 30.10.2025.
//

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
