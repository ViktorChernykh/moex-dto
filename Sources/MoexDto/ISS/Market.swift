//
//  Market.swift
//
//
//  Created by Victor Chernykh on 25/02/2024.
//

/*
markets

id (int32)	NAME string:45	title (string:765)
5			index			Индексы фондового рынка
1			shares			Рынок акций
2			bonds			Рынок облигаций
4			ndm				Режим переговорных сделок
29			otc				ОТС
27			ccp				РЕПО с ЦК
35			deposit			Депозиты с ЦК
3			repo			Рынок сделок РЕПО
28			qnv				Квал. инвесторы
36			mamc			Мультивалютный рынок смешанных активов
47			foreignshares	Иностранные ц.б.
49			foreignndm		Иностранные ц.б. РПС
33			moexboard		MOEX Board
46			gcc				РЕПО с ЦК с КСУ
54			credit			Рынок кредитов
1015		nonresndm		Режим переговорных сделок (нерезиденты)
1017		nonresrepo		Рынок РЕПО (нерезиденты)
1019		nonresccp		Рынок РЕПО с ЦК (нерезиденты)
23			standard		Standard
25			classica		Classica
*/

public struct Market: Sendable, Codable {

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
