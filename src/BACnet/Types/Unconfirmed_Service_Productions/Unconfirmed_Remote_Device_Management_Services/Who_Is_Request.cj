public package BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Remote_Device_Management_Services
import BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Service_Request.Unconfirmed_Service_Request

/*
--ISO_16484_5_2022_Page_880
--21.3.3 Unconfirmed Remote Device Management Services

Who-Is-Request ::= SEQUENCE {
 device-instance-range-low-limit [0] Unsigned (0..4194303) OPTIONAL, -- shall be used as a pair, see 16.10
 device-instance-range-high-limit [1] Unsigned (0..4194303) OPTIONAL  -- shall be used as a pair, see 16.10
 }
*/

public class Who_Is_Request <: Unconfirmed_Service_Request{
    private var _device_instance_range_low_limit: Option<UInt32> = None //[0] Unsigned (0..4194303) OPTIONAL, -- shall be used as a pair, see 16.10
    private var _device_instance_range_high_limit: Option<UInt32> = None //[1] Unsigned (0..4194303) OPTIONAL  -- shall be used as a pair, see 16.10

    public mut prop device_instance_range_low_limit: Option<UInt32> {
        get() { return _device_instance_range_low_limit }
        set(arg_Value) { _device_instance_range_low_limit = arg_Value }
    }
    public mut prop device_instance_range_high_limit: Option<UInt32> {
        get() { return _device_instance_range_high_limit }
        set(arg_Value) { _device_instance_range_high_limit = arg_Value }
    }

    public init() {
    }
}

