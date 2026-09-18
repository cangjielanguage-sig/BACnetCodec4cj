public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_901
--21.6 Base Types

BACnetDateTime ::= SEQUENCE {
 date Date, -- see Clause 20.2.12 for restrictions
 time Time -- see Clause 20.2.13 for restrictions
 }
*/

public class BACnetDateTime {
    private var _date: BACnet_Date = BACnet_Date() // Date, -- see Clause 20.2.12 for restrictions
    private var _time: BACnet_Time = BACnet_Time() // Time -- see Clause 20.2.13 for restrictions

    public mut prop date: BACnet_Date {
        get() { return _date }
        set(arg_Value) { _date = arg_Value }
    }
    public mut prop time: BACnet_Time {
        get() { return _time }
        set(arg_Value) { _time = arg_Value }
    }

    public init() {
    }

    public init(arg_date: BACnet_Date, arg_time: BACnet_Time) {
        this._date = arg_date
        this._time = arg_time
    }
}

