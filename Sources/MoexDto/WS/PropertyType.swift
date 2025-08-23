//
//  PropertyType.swift
//  MoexDto
//
//  Created by Victor Chernykh on 22.07.2024.
//

public enum PropertyType: String, Codable, Sendable {
	case snapshot
	case updates
	case removal
}
