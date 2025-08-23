//
//  MarketStatisticSecurity.swift
//  MoexDto
//
//  Created by Victor Chernykh on 29.06.2024.
//

import struct Foundation.Date

// https://iss.moex.com/iss/engines/stock/markets/shares/boards/tqbr/securities/sber?iss.only=securities

public struct MarketStatisticSecurity: Sendable, Codable {

	// MARK: Stored properties
	public let secid: String
	public let boardid: String
	public let shortName: String
	public let prevPricePublic: Double
	public let lotSizePublic: Int
	public let faceValue: Double
	public let status: String
	public let boardName: String
	public let decimals: Int
	public let secName: String
	public let remarks: String
	public let marketCode: String
	public let instrid: String
	public let sectorid: String
	public let minStep: Double
	public let prevWaPrice: Double
	public let faceUnit: String
	public let prevDate: Date
	public let issueSize: Int
	public let isin: String
	public let latName: String
	public let regnumber: String
	public let prevLegalClosePrice: Double
	public let currencyid: String
	public let secType: String
	public let listLevel: Int
	public let settleDate: Date

	// MARK: - Init
	init(
		secid: String,
		boardid: String,
		shortName: String,
		prevPricePublic: Double,
		lotSizePublic: Int,
		faceValue: Double,
		status: String,
		boardName: String,
		decimals: Int,
		secName: String,
		remarks: String,
		marketCode: String,
		instrid: String,
		sectorid: String,
		minStep: Double,
		prevWaPrice: Double,
		faceUnit: String,
		prevDate: Date,
		issueSize: Int,
		isin: String,
		latName: String,
		regnumber: String,
		prevLegalClosePrice: Double,
		currencyid: String,
		secType: String,
		listLevel: Int,
		settleDate: Date
	) {
		self.secid = secid
		self.boardid = boardid
		self.shortName = shortName
		self.prevPricePublic = prevPricePublic
		self.lotSizePublic = lotSizePublic
		self.faceValue = faceValue
		self.status = status
		self.boardName = boardName
		self.decimals = decimals
		self.secName = secName
		self.remarks = remarks
		self.marketCode = marketCode
		self.instrid = instrid
		self.sectorid = sectorid
		self.minStep = minStep
		self.prevWaPrice = prevWaPrice
		self.faceUnit = faceUnit
		self.prevDate = prevDate
		self.issueSize = issueSize
		self.isin = isin
		self.latName = latName
		self.regnumber = regnumber
		self.prevLegalClosePrice = prevLegalClosePrice
		self.currencyid = currencyid
		self.secType = secType
		self.listLevel = listLevel
		self.settleDate = settleDate
	}
}
