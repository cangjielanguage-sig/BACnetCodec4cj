public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Remote_Device_Management_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_ACK.Confirmed_Service_ACK


/*
--ISO_16484_5_2022_Page_876
--21.2.4  Confirmed Remote Device Management Services

ConfirmedPrivateTransfer-ACK ::= SEQUENCE {
 vendor-id [0] Unsigned16,
 service-number [1] Unsigned,
 result-block [2] ABSTRACT-SYNTAX.&Type OPTIONAL
 }
*/

public class ConfirmedPrivateTransfer_Ack <: Confirmed_Service_ACK {
    private var _vendor_id: UInt16 = 0u16 //[0] Unsigned16
    private var _service_number: UInt32 = 0u32 //[1] Unsigned
    private var _result_block: Option<Array<Byte>> = None //[2] ABSTRACT-SYNTAX.&Type OPTIONAL

    public mut prop vendor_id: UInt16 {
        get() { return _vendor_id }
        set(arg_Value) { _vendor_id = arg_Value }
    }
    public mut prop service_number: UInt32 {
        get() { return _service_number }
        set(arg_Value) { _service_number = arg_Value }
    }
    public mut prop result_block: Option<Array<Byte>> {
        get() { return _result_block }
        set(arg_Value) { _result_block = arg_Value }
    }

    public init() {
    }

    public init(arg_vendor_id: UInt16, arg_service_number: UInt32) {
        this._vendor_id = arg_vendor_id
        this._service_number = arg_service_number
        this._result_block = None
    }
}

