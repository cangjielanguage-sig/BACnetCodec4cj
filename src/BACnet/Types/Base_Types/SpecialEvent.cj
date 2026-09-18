public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_956
--21.6 Base Types

BACnetSpecialEvent ::= SEQUENCE {
 period  CHOICE {
    calendar-entry  [0] BACnetCalendarEntry,
    calendar-reference [1] BACnetObjectIdentifier
    },
 list-of-time-values [2] SEQUENCE OF BACnetTimeValue,
 event-priority  [3] Unsigned (1..16)
 }
*/

public class SpecialEvent {
    private var _period: UInt8 = 0u8 // CHOICE {
    private var _list_of_time_values: UInt8 = 0u8 //[2] SEQUENCE OF BACnetTimeValue
    private var _event_priority: UInt32 = 0u32 //[3] Unsigned (1..16)

    public mut prop period: UInt8 {
        get() { return _period }
        set(arg_Value) { _period = arg_Value }
    }
    public mut prop list_of_time_values: UInt8 {
        get() { return _list_of_time_values }
        set(arg_Value) { _list_of_time_values = arg_Value }
    }
    public mut prop event_priority: UInt32 {
        get() { return _event_priority }
        set(arg_Value) { _event_priority = arg_Value }
    }

    public init() {
    }

    public init(arg_period: UInt8, arg_list_of_time_values: UInt8, arg_event_priority: UInt32) {
        this._period = arg_period
        this._list_of_time_values = arg_list_of_time_values
        this._event_priority = arg_event_priority
    }
}

