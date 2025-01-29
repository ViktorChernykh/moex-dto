//
//  News.swift
//
//
//  Created by Victor Chernykh on 25/02/2024.
//

import enum TraderUserDto.Lang
import struct Foundation.Date

public struct News: Sendable, Codable {

	// MARK: Stored properties
	public let id: Int?
	public let source: String
	public let externalId: String
	public let title: String
	public let publishedAt: Date
	public let body: String
	public let lang: Lang

	// MARK: - Init
	public init(
		id: Int? = nil,
		source: String,
		externalId: String,
		title: String,
		publishedAt: Date,
		body: String,
		lang: Lang
	) {
		self.id = id
		self.source = source
		self.externalId = externalId
		self.title = title
		self.publishedAt = publishedAt
		self.body = body
		self.lang = lang
	}
}
