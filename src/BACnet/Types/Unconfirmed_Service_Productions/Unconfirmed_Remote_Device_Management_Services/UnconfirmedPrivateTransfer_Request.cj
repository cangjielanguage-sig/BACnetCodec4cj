public package BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Remote_Device_Management_Services
import BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Service_Request.Unconfirmed_Service_Request

/*
--ISO_16484_5_2022_Page_880
--21.3.3 Unconfirmed Remote Device Management Services

UnconfirmedPrivateTransfer-Request ::= SEQUENCE {
 vendor-id [0] Unsigned16,
 service-number [1] Unsigned,
 service-parameters [2] ABSTRACT-SYNTAX.&Type OPTIONAL
 }
*/

public class UnconfirmedPrivateTransfer_Request <: Unconfirmed_Service_Request {
    private var _vendor_id: UInt16 = 0u16 //[0] Unsigned16
    private var _service_number: UInt32 = 0u32 //[1] Unsigned
    private var _service_parameters: Option<Array<Byte>> = None //[2] ABSTRACT-SYNTAX.&Type OPTIONAL

    public mut prop vendor_id: UInt16 {
        get() { return _vendor_id }
        set(arg_Value) { _vendor_id = arg_Value }
    }
    public mut prop service_number: UInt32 {
        get() { return _service_number }
        set(arg_Value) { _service_number = arg_Value }
    }
    public mut prop service_parameters: Option<Array<Byte>> {
        get() { return _service_parameters }
        set(arg_Value) { _service_parameters = arg_Value }
    }

    public init() {
    }

    public init(arg_vendor_id: UInt16, arg_service_number: UInt32) {
        this._vendor_id = arg_vendor_id
        this._service_number = arg_service_number
        this._service_parameters = None
    }
}

