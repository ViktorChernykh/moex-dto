//
//  TradeSecurity.swift
//  MoexDto
//
//  Created by Victor Chernykh on 29.06.2024.
//

import struct Foundation.Date

// https://iss.moex.com/iss/engines/stock/markets/shares/boards/tqbr/securities/sber/trades
public struct TradeSecurity: Sendable, Codable {

	// MARK: Stored properties
	public let tradeNo: Int
	public let tradeTime: Date
	public let boardid: String
	public let secid: String
	public let price: Double
	public let quantity: Int
	public let value: Double
	public let period: String
	public let tradeTimeGrp: Int
	public let systemTime: Date
	public let buySell: String
	public let decimals: Int
	public let tradingSession: String

	// MARK: - Init
	public init(
		tradeNo: Int,
		tradeTime: Date,
		boardid: String,
		secid: String,
		price: Double,
		quantity: Int,
		value: Double,
		period: String,
		tradeTimeGrp: Int,
		systemTime: Date,
		buySell: String,
		decimals: Int,
		tradingSession: String
	) {
		self.tradeNo = tradeNo
		self.tradeTime = tradeTime
		self.boardid = boardid
		self.secid = secid
		self.price = price
		self.quantity = quantity
		self.value = value
		self.period = period
		self.tradeTimeGrp = tradeTimeGrp
		self.systemTime = systemTime
		self.buySell = buySell
		self.decimals = decimals
		self.tradingSession = tradingSession
	}
}
