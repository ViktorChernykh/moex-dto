//
//  Properties.swift
//  
//
//  Created by Victor Chernykh on 22.07.2024.
//

/// Model Properties.
public struct Properties: Codable, Sendable {
	public let type: PropertyType
	public let seqnum: Int
	public let published: Int?
	public let timestamp: Int
}
