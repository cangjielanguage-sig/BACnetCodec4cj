public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_924
--21.6 Base Types

BACnetLogRecord ::=  SEQUENCE {
 timestamp [0] BACnetDateTime,
 log-datum [1] CHOICE {
   log-status  [0] BACnetLogStatus,
   boolean-value  [1] BOOLEAN,
   real-value  [2] REAL,
   enumerated-value  [3] ENUMERATED, -- Optionally limited to 32 bits
   unsigned-value  [4] Unsigned,  -- Optionally limited to 32 bits
   integer-value  [5] INTEGER,  -- Optionally limited to 32 bits
   bitstring-value  [6] BIT STRING,  -- Optionally limited to 32 bits
   null-value  [7] NULL,
   failure   [8] Error,
   time-change  [9] REAL,
   any-value  [10] ABSTRACT-SYNTAX.&Type  -- Optional
  },
 status-flags [2] BACnetStatusFlags OPTIONAL
 }
*/

public class LogRecord {
    private var _timestamp: BACnetDateTime = BACnetDateTime() //[0] BACnetDateTime
    private var _log_datum: UInt8 = 0u8 //[1] CHOICE {
    private var _status_flags: Option<UInt8> = None //[2] BACnetStatusFlags OPTIONAL

    public mut prop timestamp: BACnetDateTime {
        get() { return _timestamp }
        set(arg_Value) { _timestamp = arg_Value }
    }
    public mut prop log_datum: UInt8 {
        get() { return _log_datum }
        set(arg_Value) { _log_datum = arg_Value }
    }
    public mut prop status_flags: Option<UInt8> {
        get() { return _status_flags }
        set(arg_Value) { _status_flags = arg_Value }
    }

    public init() {
    }

    public init(arg_timestamp: BACnetDateTime, arg_log_datum: UInt8) {
        this._timestamp = arg_timestamp
        this._log_datum = arg_log_datum
        this._status_flags = None
    }
}

