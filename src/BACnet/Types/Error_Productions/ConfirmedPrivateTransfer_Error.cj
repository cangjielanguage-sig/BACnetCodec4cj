public package BACnetCodec4cj.BACnet.Types.Error_Productions


/*
--ISO_16484_5_2022_Page_883
--21.4 Error Productions

ConfirmedPrivateTransfer-Error ::= SEQUENCE {
 error-type [0] Error,
 vendor-id [1] Unsigned16,
 service-number [2] Unsigned,
 error-parameters [3] ABSTRACT-SYNTAX.&Type OPTIONAL
 }
*/

public class ConfirmedPrivateTransfer_Error {
    private var _error_type: Error = Error() //[0] Error
    private var _vendor_id: UInt16 = 0u16 //[1] Unsigned16
    private var _service_number: UInt32 = 0u32 //[2] Unsigned
    private var _error_parameters: Option<Array<Byte>> = None //[3] ABSTRACT-SYNTAX.&Type OPTIONAL

    public mut prop error_type: Error {
        get() { return _error_type }
        set(arg_Value) { _error_type = arg_Value }
    }
    public mut prop vendor_id: UInt16 {
        get() { return _vendor_id }
        set(arg_Value) { _vendor_id = arg_Value }
    }
    public mut prop service_number: UInt32 {
        get() { return _service_number }
        set(arg_Value) { _service_number = arg_Value }
    }
    public mut prop error_parameters: Option<Array<Byte>> {
        get() { return _error_parameters }
        set(arg_Value) { _error_parameters = arg_Value }
    }

    public init() {
    }

    public init(arg_error_type: Error, arg_vendor_id: UInt16, arg_service_number: UInt32) {
        this._error_type = arg_error_type
        this._vendor_id = arg_vendor_id
        this._service_number = arg_service_number
        this._error_parameters = None
    }
}

