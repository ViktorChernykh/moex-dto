//
//  Snapshot.swift
//  MoexDto
//
//  Created by Victor Chernykh on 22.07.2024.
//

/// Model for message data.
public struct Snapshot: Codable, Sendable {
	public let properties: Properties
	public let columns: [String]
	public let data: [[DataElement]]
}
