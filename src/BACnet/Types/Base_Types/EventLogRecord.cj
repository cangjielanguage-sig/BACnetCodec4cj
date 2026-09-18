public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_913
--21.6 Base Types

BACnetEventLogRecord ::= SEQUENCE {
 timestamp [0] BACnetDateTime,
 log-datum [1] CHOICE {
    log-status [0] BACnetLogStatus,
    notification [1] ConfirmedEventNotification-Request,
    time-change [2] REAL
    }
 }
*/

public class EventLogRecord {
    private var _timestamp: BACnetDateTime = BACnetDateTime() //[0] BACnetDateTime
    private var _log_datum: UInt8 = 0u8 //[1] CHOICE {

    public mut prop timestamp: BACnetDateTime {
        get() { return _timestamp }
        set(arg_Value) { _timestamp = arg_Value }
    }
    public mut prop log_datum: UInt8 {
        get() { return _log_datum }
        set(arg_Value) { _log_datum = arg_Value }
    }

    public init() {
    }

    public init(arg_timestamp: BACnetDateTime, arg_log_datum: UInt8) {
        this._timestamp = arg_timestamp
        this._log_datum = arg_log_datum
    }
}

