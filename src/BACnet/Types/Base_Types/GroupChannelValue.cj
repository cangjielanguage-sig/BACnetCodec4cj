public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Choice.*

/*
--ISO_16484_5_2022_Page_918
--21.6 Base Types

BACnetGroupChannelValue ::= SEQUENCE {
 channel [0] Unsigned16,
 overriding-priority [1] Unsigned (1..16) OPTIONAL,
 value BACnetChannelValue
 }
*/

public class GroupChannelValue {
    private var _channel: UInt16 = 0u16 //[0] Unsigned16
    private var _overriding_priority: Option<UInt32> = None //[1] Unsigned (1..16) OPTIONAL
    private var _value: ChannelValue_Choice = ChannelValue_Choice.fromUInt8(0) // BACnetChannelValue

    public mut prop channel: UInt16 {
        get() { return _channel }
        set(arg_Value) { _channel = arg_Value }
    }
    public mut prop overriding_priority: Option<UInt32> {
        get() { return _overriding_priority }
        set(arg_Value) { _overriding_priority = arg_Value }
    }
    public mut prop value: ChannelValue_Choice {
        get() { return _value }
        set(arg_Value) { _value = arg_Value }
    }

    public init() {
    }

    public init(arg_channel: UInt16, arg_value: ChannelValue_Choice) {
        this._channel = arg_channel
        this._overriding_priority = None
        this._value = arg_value
    }
}

