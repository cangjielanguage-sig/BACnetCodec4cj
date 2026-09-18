public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_900
--21.6 Base Types

BACnetDateRange ::= SEQUENCE {  -- see Clause 20.2.12 for restrictions
 start-date Date,
 end-date Date
 }
--ISO_16484_5_2022_Page_901
*/

public class DateRange {
    private var _start_date: BACnet_Date = BACnet_Date() // Date
    private var _end_date: BACnet_Date = BACnet_Date() // Date

    public mut prop start_date: BACnet_Date {
        get() { return _start_date }
        set(arg_Value) { _start_date = arg_Value }
    }
    public mut prop end_date: BACnet_Date {
        get() { return _end_date }
        set(arg_Value) { _end_date = arg_Value }
    }

    public init() {
    }

    public init(arg_start_date: BACnet_Date, arg_end_date: BACnet_Date) {
        this._start_date = arg_start_date
        this._end_date = arg_end_date
    }
}

