//
//  Board.swift
//
//
//  Created by Victor Chernykh on 25/02/2024.
//

/*
boards

id (int32)	board_group_id (int32)	boardid (string:12)	title (string:381)						is_traded (int32)
36			21						SMAL				Т+: Неполные лоты (акции) - безадрес.	1
281			125						SPEQ				Поставка по СК (акции)					1
129			57						TQBR				Т+: Акции и ДР - безадрес.				1
305			42						TQDP				Крупные пакеты - Акции - безадрес.		1
429			156						TQFD				Т+: ПАИ (USD) - безадрес.				1
441			157						TQFE				Т+: ПАИ (EUR) - безадрес.				1
177			57						TQIF				Т+: Паи - безадрес.						1
431			156						TQPD				Т+: Акции ПИР (USD) - безадрес.			1
443			157						TQPE				Т+: Акции ПИР (EUR) - безадрес.			1
1240		1238					TQPH				Т+: Акции ПИР (HKD) - безадрес.			1
401			57						TQPI				Т+: Акции ПИР - безадрес.				1
1217		1215					TQPY				Т+: Акции ПИР (CNY) - безадрес.			1
225			156						TQTD				Т+: ETF (USD) - безадрес.				1
314			157						TQTE				Т+: ETF (EUR) - безадрес.				1
178			57						TQTF				Т+: ETF - безадрес.						1
1239		1238					TQTH				Т+: ПАИ (HKD) - безадрес.				1
1216		1215					TQTY				Т+: ПАИ (CNY) - безадрес.				1
 */

public struct Board: Sendable, Codable {

	// MARK: Stored properties
	public let id: Int
	public let boardGroupId: String
	public let boardid: String
	public let title: String
	public let isTraded: Bool

	// MARK: - Init
	public init(
		id: Int,
		boardGroupId: String,
		boardid: String,
		title: String,
		isTraded: Bool
	) {
		self.id = id
		self.boardGroupId = boardGroupId
		self.boardid = boardid
		self.title = title
		self.isTraded = isTraded
	}
}
