public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Choice.*

/*
--ISO_16484_5_2022_Page_923
--21.6 Base Types

BACnetLogMultipleRecord ::=  SEQUENCE {
 timestamp [0] BACnetDateTime,
 log-data [1] BACnetLogData
 }
 --ISO_16484_5_2022_Page_924
*/

public class LogMultipleRecord {
    private var _timestamp: BACnetDateTime = BACnetDateTime() //[0] BACnetDateTime
    private var _log_data: LogData_Choice = LogData_Choice.fromUInt8(0) //[1] BACnetLogData

    public mut prop timestamp: BACnetDateTime {
        get() { return _timestamp }
        set(arg_Value) { _timestamp = arg_Value }
    }
    public mut prop log_data: LogData_Choice {
        get() { return _log_data }
        set(arg_Value) { _log_data = arg_Value }
    }

    public init() {
    }

    public init(arg_timestamp: BACnetDateTime, arg_log_data: LogData_Choice) {
        this._timestamp = arg_timestamp
        this._log_data = arg_log_data
    }
}

