//
//  Orderbook.swift
//
//
//  Created by Victor Chernykh on 29.06.2024.
//

import struct Foundation.Date
import class Foundation.DateFormatter
import struct Foundation.TimeZone

// https://iss.moex.com/iss/engines/stock/markets/shares/securities/sber/orderbook
// https://iss.moex.com/iss/engines/stock/markets/shares/boards/tqbr/securities/sber/orderbook
//public struct Orderbook: Sendable, Codable {
//
//	// MARK: Stored properties
//	/// Market ID.
//	public let boardid: String
//	/// Security ID.
//	public let secid: String
//	/// Buy/Sell indicator - B/S
//	public let buySel: String
//	/// Bid or ask price.
//	public let price: Double
//	/// Quantity of the product being offered or asked.
//	public let quantity: Int
//	/// Unique sequence number.
//	public let seqnum: Int
//	/// Unique sequence number.
//	public let updateTime: Date
//
//	// MARK: - Init
//	public init(
//		boardid: String,
//		secid: String,
//		buySel: String,
//		price: Double,
//		quantity: Int,
//		seqnum: Int,
//		updateTime: Date
//	) {
//		self.boardid = boardid
//		self.secid = secid
//		self.buySel = buySel
//		self.price = price
//		self.quantity = quantity
//		self.seqnum = seqnum
//		self.updateTime = updateTime
//	}
//}
//
//extension Orderbook: CustomStringConvertible {
//	public var description: String {
//		"\(boardid)\t\(secid)\t\(buySel)\t\(price)\t\(quantity)\t\(seqnum)"
//	}
//}
//
//extension Orderbook: LosslessStringConvertible {
//	public init?(_ description: String) {
//		let values = description.components(separatedBy: "\t")
//
//		let dateFormatter: DateFormatter = .init()
//		dateFormatter.timeZone = TimeZone(identifier: "Europe/Moscow")!
//		dateFormatter.dateFormat = "yyyyMMddHHmmss"
//
//		guard
//			let price: Double = .init(values[3]),
//			let quantity: Int = .init(values[4]),
//			let seqnum: Int = .init(values[5]),
//			let updateTime: Date = dateFormatter.date(from: values[5])
//		else {
//			return nil
//		}
//
//		self.init(
//			boardid: values[0],
//			secid: values[1],
//			buySel: values[2],
//			price: price,
//			quantity: quantity,
//			seqnum: seqnum,
//			updateTime: updateTime
//		)
//	}
//}
