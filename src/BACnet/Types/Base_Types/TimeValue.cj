public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_957
--21.6 Base Types

BACnetTimeValue ::= SEQUENCE {
 time Time,
 value ABSTRACT-SYNTAX.&Type  -- any primitive datatype; complex types cannot be decoded
 }
--ISO_16484_5_2022_Page_958
*/

public class TimeValue {
    private var _time: BACnet_Time = BACnet_Time() // Time
    private var _value: Array<Byte> = Array<Byte>(0, repeat: 0u8) // ABSTRACT-SYNTAX.&Type  -- any primitive datatype; complex types cannot be decoded

    public mut prop time: BACnet_Time {
        get() { return _time }
        set(arg_Value) { _time = arg_Value }
    }
    public mut prop value: Array<Byte> {
        get() { return _value }
        set(arg_Value) { _value = arg_Value }
    }

    public init() {
    }

    public init(arg_time: BACnet_Time, arg_value: Array<Byte>) {
        this._time = arg_time
        this._value = arg_value
    }
}

