public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Enum.*

/*
--ISO_16484_5_2022_Page_919
--21.6 Base Types

BACnetLifeSafetyOperationInfo ::= SEQUENCE {
 requesting-process-identifier [0] Unsigned32,
 request [1] BACnetLifeSafetyOperation
 }
--ISO_16484_5_2022_Page_920
*/

public class LifeSafetyOperationInfo {
    private var _requesting_process_identifier: UInt32 = 0u32 //[0] Unsigned32
    private var _request: LifeSafetyOperation_Enum = LifeSafetyOperation_Enum.fromUInt32(0) //[1] BACnetLifeSafetyOperation

    public mut prop requesting_process_identifier: UInt32 {
        get() { return _requesting_process_identifier }
        set(arg_Value) { _requesting_process_identifier = arg_Value }
    }
    public mut prop request: LifeSafetyOperation_Enum {
        get() { return _request }
        set(arg_Value) { _request = arg_Value }
    }

    public init() {
    }

    public init(arg_requesting_process_identifier: UInt32, arg_request: LifeSafetyOperation_Enum) {
        this._requesting_process_identifier = arg_requesting_process_identifier
        this._request = arg_request
    }
}

