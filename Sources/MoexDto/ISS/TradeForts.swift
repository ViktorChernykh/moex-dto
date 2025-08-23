//
//  TradeForts.swift
//  MoexDto
//
//  Created by Victor Chernykh on 29.06.2024.
//

import struct Foundation.Date

public struct TradeForts: Sendable, Codable {

	// MARK: Stored properties
	public let tradeNo: Int
	public let boardName: String
	public let secid: String
	public let tradeDate: Date
	public let tradeTime: Date
	public let price: Double
	public let quantity: Int
	public let systemTime: Date
	public let recNo: Int
	public let openPosition: Int
	public let offMarketDeal: Int
	public let buySell: String

	// MARK: - Init
	public init(
		tradeNo: Int,
		boardName: String,
		secid: String,
		tradeDate: Date,
		tradeTime: Date,
		price: Double,
		quantity: Int,
		systemTime: Date,
		recNo: Int,
		openPosition: Int,
		offMarketDeal: Int,
		buySell: String
	) {
		self.tradeNo = tradeNo
		self.boardName = boardName
		self.secid = secid
		self.tradeDate = tradeDate
		self.tradeTime = tradeTime
		self.price = price
		self.quantity = quantity
		self.systemTime = systemTime
		self.recNo = recNo
		self.openPosition = openPosition
		self.offMarketDeal = offMarketDeal
		self.buySell = buySell
	}
}
