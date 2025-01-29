//
//  OrderStatsSecurity.swift
//
//
//  Created by Victor Chernykh on 29.06.2024.
//

import struct Foundation.Date

public struct OrderStatsSecurity: Sendable, Codable {

	// MARK: Stored properties
	public let tradeDate: Date
	public let tradeTime: Date
	public let secid: String
	public let putOrdersB: Int
	public let putOrdersS: Int
	public let putValB: Double
	public let putValS: Double
	public let putVolB: Int
	public let putVolS: Int
	public let putVwapB: Double
	public let putVwapS: Double
	public let putVol: Int
	public let putVal: Double
	public let putOrders: Int
	public let cancelOrdersB: Int
	public let cancelOrdersS: Int
	public let cancelValB: Double
	public let cancelValS: Double
	public let cancelVolB: Int
	public let cancelVolS: Int
	public let cancelVwapB: Double
	public let cancelVwapS: Double
	public let cancelVol: Int
	public let cancelVal: Double
	public let cancelOrders: Int
	public let systemTime: Date

	// MARK: - Init
	public init(
		tradeDate: Date,
		tradeTime: Date,
		secid: String,
		putOrdersB: Int,
		putOrdersS: Int,
		putValB: Double,
		putValS: Double,
		putVolB: Int, putVolS: Int,
		putVwapB: Double,
		putVwapS: Double,
		putVol: Int,
		putVal: Double,
		putOrders: Int,
		cancelOrdersB: Int,
		cancelOrdersS: Int,
		cancelValB: Double,
		cancelValS: Double,
		cancelVolB: Int,
		cancelVolS: Int,
		cancelVwapB: Double,
		cancelVwapS: Double,
		cancelVol: Int,
		cancelVal: Double,
		cancelOrders: Int,
		systemTime: Date
	) {
		self.tradeDate = tradeDate
		self.tradeTime = tradeTime
		self.secid = secid
		self.putOrdersB = putOrdersB
		self.putOrdersS = putOrdersS
		self.putValB = putValB
		self.putValS = putValS
		self.putVolB = putVolB
		self.putVolS = putVolS
		self.putVwapB = putVwapB
		self.putVwapS = putVwapS
		self.putVol = putVol
		self.putVal = putVal
		self.putOrders = putOrders
		self.cancelOrdersB = cancelOrdersB
		self.cancelOrdersS = cancelOrdersS
		self.cancelValB = cancelValB
		self.cancelValS = cancelValS
		self.cancelVolB = cancelVolB
		self.cancelVolS = cancelVolS
		self.cancelVwapB = cancelVwapB
		self.cancelVwapS = cancelVwapS
		self.cancelVol = cancelVol
		self.cancelVal = cancelVal
		self.cancelOrders = cancelOrders
		self.systemTime = systemTime
	}
}
