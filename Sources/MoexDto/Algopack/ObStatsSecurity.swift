//
//  ObStatsSecurity.swift
//  MoexDto
//
//  Created by Victor Chernykh on 29.06.2024.
//

import struct Foundation.Date

public struct ObStatsSecurity: Sendable, Codable {

	// MARK: Stored properties
	public let tradeDate: Date
	public let tradeTime: Date
	public let secid: String
	public let spreadBbo: Double
	public let spreadLv10: Double
	public let spread1mio: Double
	public let levelsB: Int
	public let levelsC: Int
	public let volB: Int
	public let volS: Int
	public let valB: Int
	public let valS: Int
	public let imbalanceVolBbo: Double
	public let imbalanceValBbo: Double
	public let imbalanceVol: Double
	public let imbalanceVal: Double
	public let vwapB: Double
	public let vwapS: Double
	public let vwapB1mio: Double
	public let vwapS1mio: Double
	public let systemTime: Date

	// MARK: - Init
	public init(
		tradeDate: Date,
		tradeTime: Date,
		secid: String,
		spreadBbo: Double,
		spreadLv10: Double,
		spread1mio: Double,
		levelsB: Int,
		levelsC: Int,
		volB: Int,
		volS: Int,
		valB: Int,
		valS: Int,
		imbalanceVolBbo: Double,
		imbalanceValBbo: Double,
		imbalanceVol: Double,
		imbalanceVal: Double,
		vwapB: Double,
		vwapS: Double,
		vwapB1mio: Double,
		vwapS1mio: Double,
		systemTime: Date
	) {
		self.tradeDate = tradeDate
		self.tradeTime = tradeTime
		self.secid = secid
		self.spreadBbo = spreadBbo
		self.spreadLv10 = spreadLv10
		self.spread1mio = spread1mio
		self.levelsB = levelsB
		self.levelsC = levelsC
		self.volB = volB
		self.volS = volS
		self.valB = valB
		self.valS = valS
		self.imbalanceVolBbo = imbalanceVolBbo
		self.imbalanceValBbo = imbalanceValBbo
		self.imbalanceVol = imbalanceVol
		self.imbalanceVal = imbalanceVal
		self.vwapB = vwapB
		self.vwapS = vwapS
		self.vwapB1mio = vwapB1mio
		self.vwapS1mio = vwapS1mio
		self.systemTime = systemTime
	}
}
