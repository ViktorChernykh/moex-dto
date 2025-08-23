//
//  WSTypes.swift
//  MoexDto
//
//  Created by Victor Chernykh on 06.11.2024.
//

/// Websocket commands for algopack.
public enum WSCommandType: String, CustomStringConvertible {
	case connect = "CONNECT"
	case disconnect = "DISCONNECT"
	case subscribe = "SUBSCRIBE"
	case unsubscribe = "UNSUBSCRIBE"
	case request = "REQUEST"
	case send = "SEND"

	public var description: String {
		rawValue
	}
}

public enum MXSE: String, CustomStringConvertible {
	case candles = "MXSE.candles"
	case lasttrades = "MXSE.lasttrades"
	case orderbooks = "MXSE.orderbooks"
	case securities = "MXSE.securities"

	public var description: String {
		rawValue
	}
	public var short: String {
		switch self {
		case .candles:
			"c"
		case .lasttrades:
			"t"
		case .orderbooks:
			"o"
		case .securities:
			"s"
		}
	}
}

public enum SEARCH: String, CustomStringConvertible {
	case ticker = "SEARCH.ticker"

	public var description: String {
		rawValue
	}
}
