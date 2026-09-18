public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Object_Access_Services
import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_Request.Confirmed_Service_Request
import BACnetCodec4cj.BACnet.Choice.*
import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_876
--21.2.3 Confirmed Object Access Services

AuditLogQuery-Request ::= SEQUENCE {
 audit-log [0] BACnetObjectIdentifier,
 query-parameters [1] BACnetAuditLogQueryParameters,
 start-at-sequence-number [2] Unsigned32 OPTIONAL,
 requested-count [3] Unsigned16
 }
*/

public class AuditLogQuery_Request <: Confirmed_Service_Request {
    private var _audit_log: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() //[0] BACnetObjectIdentifier
    private var _query_parameters: AuditLogQueryParameters_Choice = AuditLogQueryParameters_Choice.fromUInt8(0) //[1] BACnetAuditLogQueryParameters
    private var _start_at_sequence_number: Option<UInt32> = None //[2] Unsigned32 OPTIONAL
    private var _requested_count: UInt16 = 0u16 //[3] Unsigned16

    public mut prop audit_log: BACnet_ObjectIdentifier {
        get() { return _audit_log }
        set(arg_Value) { _audit_log = arg_Value }
    }
    public mut prop query_parameters: AuditLogQueryParameters_Choice {
        get() { return _query_parameters }
        set(arg_Value) { _query_parameters = arg_Value }
    }
    public mut prop start_at_sequence_number: Option<UInt32> {
        get() { return _start_at_sequence_number }
        set(arg_Value) { _start_at_sequence_number = arg_Value }
    }
    public mut prop requested_count: UInt16 {
        get() { return _requested_count }
        set(arg_Value) { _requested_count = arg_Value }
    }

    public init() {
    }

    public init(arg_audit_log: BACnet_ObjectIdentifier, arg_query_parameters: AuditLogQueryParameters_Choice, arg_requested_count: UInt16) {
        this._audit_log = arg_audit_log
        this._query_parameters = arg_query_parameters
        this._start_at_sequence_number = None
        this._requested_count = arg_requested_count
    }
}

