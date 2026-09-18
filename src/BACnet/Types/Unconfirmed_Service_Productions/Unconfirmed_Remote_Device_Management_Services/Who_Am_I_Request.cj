public package BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Remote_Device_Management_Services
import BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Service_Request.Unconfirmed_Service_Request

/*
--ISO_16484_5_2022_Page_880
--21.3.3 Unconfirmed Remote Device Management Services

Who-Am-I-Request ::= SEQUENCE {
 vendor-id Unsigned16,
 model-name CharacterString,
 serial-number CharacterString
 }
*/

public class Who_Am_I_Request <: Unconfirmed_Service_Request{
    private var _vendor_id: UInt16 = 0u16 // Unsigned16
    private var _model_name: String = "" // CharacterString
    private var _serial_number: String = "" // CharacterString

    public mut prop vendor_id: UInt16 {
        get() { return _vendor_id }
        set(arg_Value) { _vendor_id = arg_Value }
    }
    public mut prop model_name: String {
        get() { return _model_name }
        set(arg_Value) { _model_name = arg_Value }
    }
    public mut prop serial_number: String {
        get() { return _serial_number }
        set(arg_Value) { _serial_number = arg_Value }
    }

    public init() {
    }

    public init(arg_vendor_id: UInt16, arg_model_name: String, arg_serial_number: String) {
        this._vendor_id = arg_vendor_id
        this._model_name = arg_model_name
        this._serial_number = arg_serial_number
    }
}

