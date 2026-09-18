public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Object_Access_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_ACK.Confirmed_Service_ACK
import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_876
--21.2.3 Confirmed Object Access Services

AuditLogQuery-ACK ::= SEQUENCE {
 audit-log [0] BACnetObjectIdentifier,
 records [1] SEQUENCE OF BACnetAuditLogRecordResult,
 no-more-items [2] BOOLEAN
 }
--ISO_16484_5_2022_Page_876
--21.2.4  Confirmed Remote Device Management Services
*/

public class AuditLogQuery_Ack <: Confirmed_Service_ACK {
    private var _audit_log: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() //[0] BACnetObjectIdentifier
    private var _records: UInt8 = 0u8 //[1] SEQUENCE OF BACnetAuditLogRecordResult
    private var _no_more_items: Bool = false //[2] BOOLEAN

    public mut prop audit_log: BACnet_ObjectIdentifier {
        get() { return _audit_log }
        set(arg_Value) { _audit_log = arg_Value }
    }
    public mut prop records: UInt8 {
        get() { return _records }
        set(arg_Value) { _records = arg_Value }
    }
    public mut prop no_more_items: Bool {
        get() { return _no_more_items }
        set(arg_Value) { _no_more_items = arg_Value }
    }

    public init() {
    }

    public init(arg_audit_log: BACnet_ObjectIdentifier, arg_records: UInt8, arg_no_more_items: Bool) {
        this._audit_log = arg_audit_log
        this._records = arg_records
        this._no_more_items = arg_no_more_items
    }
}

