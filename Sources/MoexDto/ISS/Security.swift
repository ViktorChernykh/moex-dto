//
//  Security.swift
//
//
//  Created by Victor Chernykh on 22/02/2024.
//

import struct Foundation.Date
import class Foundation.DateFormatter

extension Security: Hashable {
	public func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}
}

extension Security: Equatable {
	public static func == (lhs: Security, rhs: Security) -> Bool {
		lhs.id == rhs.id // &&
	}
}

public struct Security: Sendable, Codable {

	// MARK: Stored properties
	public let id: Int?
	public let exchange: String
	/// Moex id.
	public let externalId: String
	public let type: String
	public let group: String
	public let primaryBoardId: String

	public let secid: String
	public let shortName: String
	public let regnumber: String?
	public let name: String
	public let isin: String?
	public let isTraded: Bool

	public let emitentId: Int?
	public let emitentTitle: String?
	public let emitentInn: String?
	public let emitentOkpo: String?

	/// From security model.
	public let isQualifiedInvestors: Bool
	public let morningSession: Bool
	public let eveningSession: Bool
	public let typeName: String
	public let issueSize: Int
	public let faceValue: Double
	public let faceUnit: String
	public let issueDate: Date
	public let latName: String
	public let listLevel: Int

	// MARK: - Init
	public init(
		id: Int? = nil,
		exchange: String,
		externalId: String,
		type: String,
		group: String,
		primaryBoardId: String,

		secid: String,
		shortName: String,
		regnumber: String?,
		name: String,
		isin: String?,
		isTraded: Bool,

		emitentId: Int?,
		emitentTitle: String?,
		emitentInn: String?,
		emitentOkpo: String?,

		/// from security model
		isQualifiedInvestors: Bool,
		morningSession: Bool,
		eveningSession: Bool,
		typeName: String,
		issueSize: Int,
		faceValue: Double,
		faceUnit: String,
		issueDate: Date,
		latName: String,
		listLevel: Int
	) {
		self.id = id
		self.exchange = exchange
		self.externalId = externalId
		self.type = type
		self.group = group
		self.primaryBoardId = primaryBoardId

		self.secid = secid
		self.shortName = shortName
		self.regnumber = regnumber
		self.name = name
		self.isin = isin
		self.isTraded = isTraded

		self.emitentId = emitentId
		self.emitentTitle = emitentTitle
		self.emitentInn = emitentInn
		self.emitentOkpo = emitentOkpo

		self.isQualifiedInvestors = isQualifiedInvestors
		self.morningSession = morningSession
		self.eveningSession = eveningSession
		self.typeName = typeName
		self.issueSize = issueSize
		self.faceValue = faceValue
		self.faceUnit = faceUnit
		self.issueDate = issueDate
		self.latName = latName
		self.listLevel = listLevel
	}
}

extension Security: CustomStringConvertible {
	public var description: String {
		let emitentIdStr: String = if let emitentId {
			String(emitentId)
		} else {
			""
		}
		let idStr: String = if let id {
			String(id)
		} else {
			""
		}
		return "\(idStr)\t\(exchange)\t\(externalId)\t\(type)\t\(group)\t\(primaryBoardId)\t\(secid)\t\(shortName)\t\(regnumber ?? "")\t\(name)\t\(isin ?? "")\t\(isTraded ? "1" : "")\t\(emitentIdStr)\t\(emitentTitle ?? "")\t\(emitentInn ?? "")\t\(emitentOkpo ?? "")\t\(isQualifiedInvestors ? "1" : "")\t\(morningSession ? "1" : "")\t\(eveningSession ? "1" : "")\t\(typeName)\t\(issueSize)\t\(faceValue)\t\(faceUnit)\t\(issueDate)\t\(latName)"
	}
}

extension Security: LosslessStringConvertible {
	public init?(_ description: String) {
		let values = description.components(separatedBy: "\t")
		let dateFormatter: DateFormatter = .init()

		guard
			let id: Int = .init(values[0]),
			let issueSize: Int = .init(values[20]),
			let faceValue: Double = .init(values[21]),
			let issueDate: Date = dateFormatter.date(from: values[23]),
			let listLevel: Int = .init(values[25])
		else {
			return nil
		}

		self.init(
			id: id,
			exchange: values[1],
			externalId: values[2],
			type: values[3],
			group: values[4],
			primaryBoardId: values[5],

			secid: values[6],
			shortName: values[7],
			regnumber: values[8] == "" ? nil : values[8],
			name: values[9],
			isin: values[10] == "" ? nil : values[10],
			isTraded: values[11] == "1",

			emitentId: Int(values[12]),
			emitentTitle: values[13] == "" ? nil : values[13],
			emitentInn: values[14] == "" ? nil : values[14],
			emitentOkpo: values[15] == "" ? nil : values[15],

			/// from security model
			isQualifiedInvestors: values[16] == "1",
			morningSession: values[17] == "1",
			eveningSession: values[18] == "1",
			typeName: values[19],
			issueSize: issueSize,
			faceValue: faceValue,
			faceUnit: values[22],
			issueDate: issueDate,
			latName: values[24],
			listLevel: listLevel
		)
	}
}
