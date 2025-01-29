//
//  MarketDataSecurity.swift
//
//
//  Created by Victor Chernykh on 29.06.2024.
//

import struct Foundation.Date

public struct MarketDataSecurity: Sendable, Codable {

	// MARK: Stored properties
	public let id: Int?
	public let secid: String
	public let boardid: String
	/// Цена cпроса.
	public let bid: Double
	/// Глубина спроса.
	public let bidDepth: Int
	/// Цена предложения.
	public let offer: Double
	/// Глубина предложений.
	public let offerDepth: Int
	/// Разница между ценами предложения и спроса.
	public let spread: Double
	/// Глубина спроса в тиках.
	public let bidDeptht: Int
	/// Глубина предложений в тиках.
	public let offerDeptht: Int
	public let open: Double
	public let low: Double
	public let high: Double
	/// Последняя цена.
	public let last: Double
	/// Изменение цены.
	public let lastChange: Double
	/// Процентное изменение цены.
	public let lastChangePrcnt: Double
	/// Количество.
	public let qty: Int
	/// Объем.
	public let value: Double
	/// Объем в USD.
	public let valueUsd: Double
	/// Взвешенная средняя цена.
	public let waPrice: Double
	/// Изменение последней цены к предыдущей взвешенной средней.
	public let lastCngToLastWaPrice: Double
	/// Процентное изменение взвешенной средней цены к предыдущей.
	public let wapToPrevWaPricePrcnt: Double
	/// Отношение взвешенной средней цены к предыдущей.
	public let wapToPrevWaPrice: Double
	/// Цена закрытия.
	public let closePrice: Double
	/// Рыночная цена на сегодня.
	public let marketPriceToday: Double
	/// Рыночная цена.
	public let marketPrice: Double
	/// Изменение последней цены от предыдущей.
	public let lastTopRevPrice: Double
	/// Количество сделок.
	public let numTrades: Int
	/// Объем сделок на сегодня.
	public let volToday: Int
	/// Объем сделок на сегодня в валюте рынка.
	public let valToday: Int
	/// Объем сделок на сегодня в USD.
	public let valTodayUsd: Int
	/// Цена закрытия ETF.
	public let etfSettlePrice: Double
	/// Текущий статус торгов.
	public let tradingStatus: String
	/// Время обновления данных.
	public let updateTime: Date
	/// Последняя цена предложения.
	public let lastBid: Double
	/// Последняя цена спроса.
	public let lastOffer: Double
	/// Предыдущая цена закрытия.
	public let lastClosePrice: Double
	/// Текущая цена.
	public let lastCurrentPrice: Double
	/// Вторичная рыночная цена.
	public let marketPrice2: Double
	/// Количество предложений на покупку.
	public let numBids: Int
	/// Количество предложений на продажу.
	public let numOffers: Int
	/// Изменение.
	public let change: Double
	/// Время.
	public let time: Date
	/// Максимальная цена предложения.
	public let highbBid: Double
	/// Минимальная цена спроса.
	public let lowOffer: Double
	/// Цена минус предыдущая средневзвешенная цена.
	public let priceMinUsPrevWaPrice: Double
	/// Цена открытия за период.
	public let openPeriodPrice: Double
	/// Уникальный номер последовательности.
	public let seqNum: Int
	/// Время системы.
	public let systemTime: Date
	/// Цена закрытия аукциона.
	public let closingAuctionPrice: Double
	/// Объем закрытия аукциона.
	public let closingAuctionVolume: Double
	/// Капитализация.
	public let issueCapitalization: Double
	/// Время обновления капитализации.
	public let issueCapitalizationUpdateTime: Date
	/// Валюта закрытия ETF.
	public let etfSettleCurrency: String
	/// Объем сделок на сегодня в RUR.
	public let valTodayRur: Int
	/// Торговая сессия.
	public let tradingSession: String
	/// Тренд капитализации.
	public let trendIssueCapitalization: Double

	// MARK: - Init
	public init(
		id: Int? = nil,
		secid: String,
		boardid: String,
		bid: Double,
		bidDepth: Int,
		offer: Double,
		offerDepth: Int,
		spread: Double,
		bidDeptht: Int,
		offerDeptht: Int,
		open: Double,
		low: Double,
		high: Double,
		last: Double,
		lastChange: Double,
		lastChangePrcnt: Double,
		qty: Int,
		value: Double,
		valueUsd: Double,
		waPrice: Double,
		lastCngToLastWaPrice: Double,
		wapToPrevWaPricePrcnt: Double,
		wapToPrevWaPrice: Double,
		closePrice: Double,
		marketPriceToday: Double,
		marketPrice: Double,
		lastTopRevPrice: Double,
		numTrades: Int,
		volToday: Int,
		valToday: Int,
		valTodayUsd: Int,
		etfSettlePrice: Double,
		tradingStatus: String,
		updateTime: Date,
		lastBid: Double,
		lastOffer: Double,
		lastClosePrice: Double,
		lastCurrentPrice: Double,
		marketPrice2: Double,
		numBids: Int,
		numOffers: Int,
		change: Double,
		time: Date,
		highbBid: Double,
		lowOffer: Double,
		priceMinUsPrevWaPrice: Double,
		openPeriodPrice: Double,
		seqNum: Int,
		systemTime: Date,
		closingAuctionPrice: Double,
		closingAuctionVolume: Double,
		issueCapitalization: Double,
		issueCapitalizationUpdateTime: Date,
		etfSettleCurrency: String,
		valTodayRur: Int,
		tradingSession: String,
		trendIssueCapitalization: Double
	) {
		self.id = id
		self.secid = secid
		self.boardid = boardid
		self.bid = bid
		self.bidDepth = bidDepth
		self.offer = offer
		self.offerDepth = offerDepth
		self.spread = spread
		self.bidDeptht = bidDeptht
		self.offerDeptht = offerDeptht
		self.open = open
		self.low = low
		self.high = high
		self.last = last
		self.lastChange = lastChange
		self.lastChangePrcnt = lastChangePrcnt
		self.qty = qty
		self.value = value
		self.valueUsd = valueUsd
		self.waPrice = waPrice
		self.lastCngToLastWaPrice = lastCngToLastWaPrice
		self.wapToPrevWaPricePrcnt = wapToPrevWaPricePrcnt
		self.wapToPrevWaPrice = wapToPrevWaPrice
		self.closePrice = closePrice
		self.marketPriceToday = marketPriceToday
		self.marketPrice = marketPrice
		self.lastTopRevPrice = lastTopRevPrice
		self.numTrades = numTrades
		self.volToday = volToday
		self.valToday = valToday
		self.valTodayUsd = valTodayUsd
		self.etfSettlePrice = etfSettlePrice
		self.tradingStatus = tradingStatus
		self.updateTime = updateTime
		self.lastBid = lastBid
		self.lastOffer = lastOffer
		self.lastClosePrice = lastClosePrice
		self.lastCurrentPrice = lastCurrentPrice
		self.marketPrice2 = marketPrice2
		self.numBids = numBids
		self.numOffers = numOffers
		self.change = change
		self.time = time
		self.highbBid = highbBid
		self.lowOffer = lowOffer
		self.priceMinUsPrevWaPrice = priceMinUsPrevWaPrice
		self.openPeriodPrice = openPeriodPrice
		self.seqNum = seqNum
		self.systemTime = systemTime
		self.closingAuctionPrice = closingAuctionPrice
		self.closingAuctionVolume = closingAuctionVolume
		self.issueCapitalization = issueCapitalization
		self.issueCapitalizationUpdateTime = issueCapitalizationUpdateTime
		self.etfSettleCurrency = etfSettleCurrency
		self.valTodayRur = valTodayRur
		self.tradingSession = tradingSession
		self.trendIssueCapitalization = trendIssueCapitalization
	}
}
