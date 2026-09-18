public package BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Remote_Device_Management_Services
import BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Service_Request.Unconfirmed_Service_Request

/*
--ISO_16484_5_2022_Page_880
--21.3.3 Unconfirmed Remote Device Management Services

Who-Has-Request ::= SEQUENCE {
 limits  SEQUENCE {
   device-instance-range-low-limit [0] Unsigned (0..4194303),
   device-instance-range-high-limit [1] Unsigned (0..4194303)
   } OPTIONAL,
 object CHOICE {
   object-identifier   [2] BACnetObjectIdentifier,
   object-name   [3] CharacterString
   }
 }
*/

public class Who_Has_Request <: Unconfirmed_Service_Request{
    private var _limits: UInt8 = 0u8 // SEQUENCE {
    private var _object: UInt8 = 0u8 // CHOICE {

    public mut prop limits: UInt8 {
        get() { return _limits }
        set(arg_Value) { _limits = arg_Value }
    }
    public mut prop object: UInt8 {
        get() { return _object }
        set(arg_Value) { _object = arg_Value }
    }

    public init() {
    }

    public init(arg_limits: UInt8, arg_object: UInt8) {
        this._limits = arg_limits
        this._object = arg_object
    }
}

