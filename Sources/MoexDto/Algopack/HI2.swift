//
//  HI2.swift
//  MoexDto
//
//  Created by Victor Chernykh on 29.06.2024.
//

import struct Foundation.Date

public struct HI2: Sendable, Codable {

	// MARK: Stored properties
	public let tradeDate: Date
	public let tradeTime: Date
	public let secid: String
	public let metric: String
	public let value: Double
	public let reference: String
	public let systemTime: Date

	// MARK: - Init
	public init(
		tradeDate: Date,
		tradeTime: Date,
		secid: String,
		metric: String,
		value: Double,
		reference: String,
		systemTime: Date
	) {
		self.tradeDate = tradeDate
		self.tradeTime = tradeTime
		self.secid = secid
		self.metric = metric
		self.value = value
		self.reference = reference
		self.systemTime = systemTime
	}
}
