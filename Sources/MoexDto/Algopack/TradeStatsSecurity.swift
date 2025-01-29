//
//  TradeStatsSecurity.swift
//
//
//  Created by Victor Chernykh on 29.06.2024.
//

import struct Foundation.Date

public struct TradeStatsSecurity: Sendable, Codable {

	// MARK: Stored properties
	public let tradeDate: Date
	public let tradeTime: Date
	public let secid: String
	public let open: Double
	public let high: Double
	public let low: Double
	public let close: Double
	public let priceStd: Double
	public let volume: Int
	public let value: Double
	/// Trades amount.
	public let trades: Int
	/// Weighted average price.
	public let prVwap: Double
	/// Price change over the period, %.
	public let prChange: Double
	public let tradesB: Int
	public let tradesS: Int
	public let valB: Double
	public let valS: Double
	public let volB: Int
	public let volS: Int

	public let disbalance: Double
	/// Weighted average purchase price.
	public let prVwapB: Double
	/// Weighted average selling price.
	public let prVwapS: Double
	public let systemTime: Date

	// MARK: - Init
	public init(
		tradeDate: Date,
		tradeTime: Date,
		secid: String,
		open: Double,
		high: Double,
		low: Double,
		close: Double,
		priceStd: Double,
		volume: Int,
		value: Double,
		trades: Int,
		prVwap: Double,
		prChange: Double,
		tradesB: Int,
		tradesS: Int,
		valB: Double,
		valS: Double,
		volB: Int,
		volS: Int,
		disbalance: Double,
		prVwapB: Double,
		prVwapS: Double,
		systemTime: Date
	) {
		self.tradeDate = tradeDate
		self.tradeTime = tradeTime
		self.secid = secid
		self.open = open
		self.high = high
		self.low = low
		self.close = close
		self.priceStd = priceStd
		self.volume = volume
		self.value = value
		self.trades = trades
		self.prVwap = prVwap
		self.prChange = prChange
		self.tradesB = tradesB
		self.tradesS = tradesS
		self.valB = valB
		self.valS = valS
		self.volB = volB
		self.volS = volS
		self.disbalance = disbalance
		self.prVwapB = prVwapB
		self.prVwapS = prVwapS
		self.systemTime = systemTime
	}
}
