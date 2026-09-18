public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_896
--21.6 Base Types

BACnetAuditLogRecordResult ::= SEQUENCE {
 sequence-number [0] Unsigned64,
 log-record [1] BACnetAuditLogRecord
 }
*/

public class AuditLogRecordResult {
    private var _sequence_number: UInt64 = 0u64 //[0] Unsigned64
    private var _log_record: AuditLogRecord = AuditLogRecord() //[1] BACnetAuditLogRecord

    public mut prop sequence_number: UInt64 {
        get() { return _sequence_number }
        set(arg_Value) { _sequence_number = arg_Value }
    }
    public mut prop log_record: AuditLogRecord {
        get() { return _log_record }
        set(arg_Value) { _log_record = arg_Value }
    }

    public init() {
    }

    public init(arg_sequence_number: UInt64, arg_log_record: AuditLogRecord) {
        this._sequence_number = arg_sequence_number
        this._log_record = arg_log_record
    }
}

