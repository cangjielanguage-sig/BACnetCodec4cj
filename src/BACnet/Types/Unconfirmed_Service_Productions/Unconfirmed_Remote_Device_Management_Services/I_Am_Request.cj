public package BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Remote_Device_Management_Services
import BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Service_Request.Unconfirmed_Service_Request
import BACnetCodec4cj.BACnet.Enum.*
import BACnetCodec4cj.BACnet.Types.ApplicationTypes.*

/*
--ISO_16484_5_2022_Page_879
--21.3.3 Unconfirmed Remote Device Management Services

I-Am-Request ::= SEQUENCE {
 i-am-device-identifier BACnetObjectIdentifier,
 max-apdu-length-accepted Unsigned,
 segmentation-supported BACnetSegmentation,
 vendor-id Unsigned16
 }
*/

public class I_Am_Request <: Unconfirmed_Service_Request {
    private var _i_am_device_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() // BACnetObjectIdentifier
    private var _max_apdu_length_accepted: UInt32 = 0u32 // Unsigned
    private var _segmentation_supported: Segmentation_Enum = Segmentation_Enum.fromUInt32(0) // BACnetSegmentation
    private var _vendor_id: UInt16 = 0u16 // Unsigned16

    public mut prop i_am_device_identifier: BACnet_ObjectIdentifier {
        get() { return _i_am_device_identifier }
        set(arg_Value) { _i_am_device_identifier = arg_Value }
    }
    public mut prop max_apdu_length_accepted: UInt32 {
        get() { return _max_apdu_length_accepted }
        set(arg_Value) { _max_apdu_length_accepted = arg_Value }
    }
    public mut prop segmentation_supported: Segmentation_Enum {
        get() { return _segmentation_supported }
        set(arg_Value) { _segmentation_supported = arg_Value }
    }
    public mut prop vendor_id: UInt16 {
        get() { return _vendor_id }
        set(arg_Value) { _vendor_id = arg_Value }
    }

    public init() {
    }

    public init(arg_i_am_device_identifier: BACnet_ObjectIdentifier, arg_max_apdu_length_accepted: UInt32, arg_segmentation_supported: Segmentation_Enum, arg_vendor_id: UInt16) {
        this._i_am_device_identifier = arg_i_am_device_identifier
        this._max_apdu_length_accepted = arg_max_apdu_length_accepted
        this._segmentation_supported = arg_segmentation_supported
        this._vendor_id = arg_vendor_id
    }
}

