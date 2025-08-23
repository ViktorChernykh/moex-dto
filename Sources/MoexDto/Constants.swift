//
//  Constants.swift
//  MoexDto
//
//  Created by Victor Chernykh on 14.08.2025.
//

public enum Constants {

	/// Destination for ws Algopack.
	public static func destination(for board: String) -> String {
		switch board {
		case "TQBR", "SMAL", "SPEQ", "TQDP", "TQFD", "TQFE", "TQIF", "TQPD", "TQPE", "TQPH", "TQPI", "TQPY", "TQTD", "TQTE", "TQTF", "TQTH", "TQTY", "MTQR":
			"MXSE"
		case "RFUD", "ROPD":
			"FORTS"
		case "SNDX", "AGRO", "INAV", "INPF", "MMIX", "RTSI", "SDII", "FIXI":
			"INDICES"
		case "OTCF", "OTCT", "AUCB", "CETS", "CNGD", "FIXN", "FIXS", "LICU", "SDBP", "SPEC", "WAPN", "WAPS":
			"MXCX"
		case "AUBB", "AUCT", "PACT", "SPOB", "TQCB", "TQDB", "TQDU", "TQIR", "TQIU", "TQIY", "TQOB", "TQOD", "TQOE", "TQOY", "TQRD", "TQUD", "OCTR", "OCTU", "QBND":
			"BONDS"
		default:
			""
		}
	}

	public static func getEngineMarket(board: String) -> (String, String)? {
		switch board {
			// bonds
		case "AUBB", "AUCT", "PACT", "SPOB", "TQCB", "TQDB", "TQDU", "TQIR", "TQIU", "TQIY", "TQOB", "TQOD", "TQOE", "TQOY", "TQRD", "TQUD":
			("stock", "bonds")
		case "OCTR", "OCTU":
			("otc", "bonds")
		case "QBND":
			("quotes", "bonds")

			// credit
		case "CREE", "CRER", "CREU", "CREY":
			("stock", "credit")

			// deposit
		case "ADEP", "NDEP", "NDPU", "NDPY", "TDEP", "TDPE", "TDPU", "TDPY":
			("stock", "deposit")
		case "DPFK", "DPFO":
			("money", "deposit")

			// index
		case "SNDX", "AGRO", "INAV", "INPF", "MMIX", "RTSI", "SDII":
			("stock", "index")
		case "FIXI":
			("currency", "index")
			// shares
		case "TQBR", "SMAL", "SPEQ", "TQDP", "TQFD", "TQFE", "TQIF", "TQPD", "TQPE", "TQPH", "TQPI", "TQPY", "TQTD", "TQTE", "TQTF", "TQTH", "TQTY":
			("stock", "shares")
		case "MTQR":
			("otc", "shares")

			// futures
		case "RFUD":
			("futures", "forts")

			// options
		case "ROPD":
			("futures", "options")
		default:
			nil
		}
	}
}
