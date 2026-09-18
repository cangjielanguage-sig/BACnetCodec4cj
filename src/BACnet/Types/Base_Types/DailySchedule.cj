public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_900
--21.6 Base Types

BACnetDailySchedule ::= SEQUENCE {
 day-schedule [0] SEQUENCE OF BACnetTimeValue
 }
*/

public class DailySchedule {
    private var _day_schedule: UInt8 = 0u8 //[0] SEQUENCE OF BACnetTimeValue

    public mut prop day_schedule: UInt8 {
        get() { return _day_schedule }
        set(arg_Value) { _day_schedule = arg_Value }
    }

    public init() {
    }

    public init(arg_day_schedule: UInt8) {
        this._day_schedule = arg_day_schedule
    }
}

