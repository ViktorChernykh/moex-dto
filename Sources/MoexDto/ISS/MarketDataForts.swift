//
//  MarketDataForts.swift
//
//
//  Created by Victor Chernykh on 29.06.2024.
//

import struct Foundation.Date

public struct MarketDataForts: Sendable, Codable {

	/// Идентификатор ценной бумаги.
	public let secid: String
	/// Идентификатор рынка.
	public let boardid: String
	/// Цена предложения (покупки).
	public let bid: Double
	/// Цена предложения (продажи).
	public let offer: Double
	/// Разница между ценами предложения и спроса.
	public let spread: Double
	/// Цена открытия.
	public let opens: Double
	/// Максимальная цена за период.
	public let high: Double
	/// Минимальная цена за период.
	public let low: Double
	/// Последняя цена.
	public let last: Double
	/// Количество товара.
	public let quantity: Int
	/// Изменение цены.
	public let lastChange: Double
	/// Цена закрытия.
	public let settleTrice: Double
	/// Разница между ценой закрытия и предыдущей ценой закрытия.
	public let settleToprevSettle: Double
	/// Открытая позиция.
	public let openPosition: Double
	/// Количество сделок.
	public let numTrades: Int
	/// Объем сделок.
	public let volToday: Int
	/// Объем сделок в валюте рынка.
	public let valToday: Int
	/// Объем сделок в долларах сша.
	public let valTodayUsd: Int
	/// Время обновления данных.
	public let updateTime: Date
	/// Процентное изменение цены.
	public let lastChangePrcnt: Double
	/// Глубина спроса.
	public let bidDepth: Int
	/// Глубина спроса в тиках.
	public let bidDeptht: Int
	/// Количество предложений на покупку.
	public let numBids: Int
	/// Глубина предложений.
	public let offerDepth: Int
	/// Глубина предложений в тиках.
	public let offerDeptht: Int
	/// Количество предложений на продажу.
	public let numOffers: Int
	/// Время.
	public let time: Date
	/// Процентное изменение цены закрытия.
	public let settleTopRevSettlePrc: Double
	/// Уникальный номер последовательности.
	public let seqnum: Int
	/// Время системы.
	public let systemTime: Date
	/// Дата сделки.
	public let tradeDate: Date
	/// Процентное изменение последней цены от предыдущей цены.
	public let lastToprevPrice: Double
	/// Изменение открытых позиций.
	public let oiChange: Int
	/// Цена открытия за период.
	public let openPeriodPrice: Double
	/// Ставка свопа.
	public let swaPrate: Double

	public init(
		secid: String,
		boardid: String,
		bid: Double,
		offer: Double,
		spread: Double,
		opens: Double,
		high: Double,
		low: Double,
		last: Double,
		quantity: Int,
		lastChange: Double,
		settleTrice: Double,
		settleToprevSettle: Double,
		openPosition: Double,
		numTrades: Int,
		volToday: Int,
		valToday: Int,
		valTodayUsd: Int,
		updateTime: Date,
		lastChangePrcnt: Double,
		bidDepth: Int,
		bidDeptht: Int,
		numBids: Int,
		offerDepth: Int,
		offerDeptht: Int,
		numOffers: Int,
		time: Date,
		settleTopRevSettlePrc: Double,
		seqnum: Int,
		systemTime: Date,
		tradeDate: Date,
		lastToprevPrice: Double,
		oiChange: Int,
		openPeriodPrice: Double,
		swaPrate: Double
	) {
		self.secid = secid
		self.boardid = boardid
		self.bid = bid
		self.offer = offer
		self.spread = spread
		self.opens = opens
		self.high = high
		self.low = low
		self.last = last
		self.quantity = quantity
		self.lastChange = lastChange
		self.settleTrice = settleTrice
		self.settleToprevSettle = settleToprevSettle
		self.openPosition = openPosition
		self.numTrades = numTrades
		self.volToday = volToday
		self.valToday = valToday
		self.valTodayUsd = valTodayUsd
		self.updateTime = updateTime
		self.lastChangePrcnt = lastChangePrcnt
		self.bidDepth = bidDepth
		self.bidDeptht = bidDeptht
		self.numBids = numBids
		self.offerDepth = offerDepth
		self.offerDeptht = offerDeptht
		self.numOffers = numOffers
		self.time = time
		self.settleTopRevSettlePrc = settleTopRevSettlePrc
		self.seqnum = seqnum
		self.systemTime = systemTime
		self.tradeDate = tradeDate
		self.lastToprevPrice = lastToprevPrice
		self.oiChange = oiChange
		self.openPeriodPrice = openPeriodPrice
		self.swaPrate = swaPrate
	}
}
