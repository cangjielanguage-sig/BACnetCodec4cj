public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Choice.*

/*
--ISO_16484_5_2022_Page_918
--21.6 Base Types

BACnetHostNPort ::= SEQUENCE {
 host [0] BACnetHostAddress,
 port [1] Unsigned16
 }
*/

public class HostNPort {
    private var _host: HostAddress_Choice = HostAddress_Choice.fromUInt8(0) //[0] BACnetHostAddress
    private var _port: UInt16 = 0u16 //[1] Unsigned16

    public mut prop host: HostAddress_Choice {
        get() { return _host }
        set(arg_Value) { _host = arg_Value }
    }
    public mut prop port: UInt16 {
        get() { return _port }
        set(arg_Value) { _port = arg_Value }
    }

    public init() {
    }

    public init(arg_host: HostAddress_Choice, arg_port: UInt16) {
        this._host = arg_host
        this._port = arg_port
    }
}

