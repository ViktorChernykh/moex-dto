//
//  WSTypes.swift
//  moex-dto
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
	case orderbooks = "MXSE.orderbooks"
	case candles = "MXSE.candles"
	case securities = "MXSE.securities"
	case lasttrades = "MXSE.lasttrades"

	public var description: String {
		rawValue
	}
}

public enum SEARCH: String, CustomStringConvertible {
	case ticker = "SEARCH.ticker"

	public var description: String {
		rawValue
	}
}
