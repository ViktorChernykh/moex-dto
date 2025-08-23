//
//  Properties.swift
//  MoexDto
//
//  Created by Victor Chernykh on 22.07.2024.
//

/// Model Properties.
public struct Properties: Codable, Sendable {
	public let type: PropertyType
	public let seqnum: UInt64
	public let published: UInt64?
	public let timestamp: UInt64
}
