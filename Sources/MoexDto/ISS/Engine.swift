//
//  Engine.swift
//
//
//  Created by Victor Chernykh on 25/02/2024.
//

/*
engines - рынки

id (int32)	name (string:45)	title (string:765)
1			stock				Фондовый рынок и рынок депозитов
2			state				Рынок ГЦБ (размещение)
3			currency			Валютный рынок
4			futures				Срочный рынок
5			commodity			Товарный рынок
6			interventions		Товарные интервенции
7			offboard			ОТС-система
9			agro				Агро
1012		otc					ОТС с ЦК
1282		quotes				Квоты
*/

public struct Engine: Sendable, Codable {

	// MARK: Stored properties
	public let id: Int
	public let name: String
	public let title: String

	// MARK: - Init
	public init(
		id: Int,
		name: String,
		title: String
	) {
		self.id = id
		self.name = name
		self.title = title
	}
}
