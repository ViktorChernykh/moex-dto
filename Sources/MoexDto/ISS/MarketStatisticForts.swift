//
//  MarketStatisticForts.swift
//  MoexDto
//
//  Created by Victor Chernykh on 29.06.2024.
//

import struct Foundation.Date

public struct MarketStatisticForts: Sendable, Codable {

	/// Идентификатор ценной бумаги.
	public let secid: String
	/// Идентификатор рынка.
	public let boardid: String
	/// Краткое название ценной бумаги.
	public let shortName: String
	/// Полное название ценной бумаги.
	public let secName: String
	/// Предыдущая цена закрытия.
	public let prevSettlePrice: Double
	/// Количество десятичных знаков.
	public let decimals: Int
	/// Минимальный шаг изменения цены.
	public let minStep: Double
	/// Дата последней сделки.
	public let lastTradeDate: Date
	/// Дата последнего исполнения.
	public let lastDelDate: Date
	/// Тип ценной бумаги.
	public let secType: String
	/// Латинское название ценной бумаги.
	public let latName: String
	/// Код актива.
	public let assetCode: String
	/// Предыдущая открытая позиция.
	public let prevOpenPosition: Int
	/// Объем лота.
	public let lotVolume: Int
	/// Начальная маржа.
	public let initialMargin: Double
	/// Верхний предел цены.
	public let highLimit: Double
	/// Нижний предел цены.
	public let lowLimit: Double
	/// Цена шага.
	public let stepPrice: Double
	/// Последняя цена закрытия.
	public let lastSettlePrice: Double
	/// Предыдущая цена.
	public let prevPrice: Double
	/// Время обновления начальной маржи.
	public let imTime: Date
	/// Комиссия за покупку/продажу.
	public let buySellFee: Double
	/// Комиссия за скальпирование.
	public let scalperFee: Double
	/// Комиссия за договоренность.
	public let negotiatedFee: Double
	///	Комиссия за исполнение.
	public let exerciseFee: Double

	public init(
		secid: String,
		boardid: String,
		shortName: String,
		secName: String,
		prevSettlePrice: Double,
		decimals: Int,
		minStep: Double,
		lastTradeDate: Date,
		lastDelDate: Date,
		secType: String,
		latName: String,
		assetCode: String,
		prevOpenPosition: Int,
		lotVolume: Int,
		initialMargin: Double,
		highLimit: Double,
		lowLimit: Double,
		stepPrice: Double,
		lastSettlePrice: Double,
		prevPrice: Double,
		imTime: Date,
		buySellFee: Double,
		scalperFee: Double,
		negotiatedFee: Double,
		exerciseFee: Double
	) {
		self.secid = secid
		self.boardid = boardid
		self.shortName = shortName
		self.secName = secName
		self.prevSettlePrice = prevSettlePrice
		self.decimals = decimals
		self.minStep = minStep
		self.lastTradeDate = lastTradeDate
		self.lastDelDate = lastDelDate
		self.secType = secType
		self.latName = latName
		self.assetCode = assetCode
		self.prevOpenPosition = prevOpenPosition
		self.lotVolume = lotVolume
		self.initialMargin = initialMargin
		self.highLimit = highLimit
		self.lowLimit = lowLimit
		self.stepPrice = stepPrice
		self.lastSettlePrice = lastSettlePrice
		self.prevPrice = prevPrice
		self.imTime = imTime
		self.buySellFee = buySellFee
		self.scalperFee = scalperFee
		self.negotiatedFee = negotiatedFee
		self.exerciseFee = exerciseFee
	}
}
