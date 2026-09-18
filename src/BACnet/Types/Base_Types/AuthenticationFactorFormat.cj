public package BACnetCodec4cj.BACnet.Types.Base_Types

import BACnetCodec4cj.BACnet.Enum.*

/*
--ISO_16484_5_2022_Page_897
--21.6 Base Types

BACnetAuthenticationFactorFormat ::= SEQUENCE {
 format-type [0] BACnetAuthenticationFactorType,
 vendor-id [1] Unsigned16 OPTIONAL,
 vendor-format [2] Unsigned16 OPTIONAL
 }
--ISO_16484_5_2022_Page_898
*/

public class AuthenticationFactorFormat {
    private var _format_type: AuthenticationFactorType_Enum = AuthenticationFactorType_Enum.fromUInt32(0) //[0] BACnetAuthenticationFactorType
    private var _vendor_id: Option<UInt16> = None //[1] Unsigned16 OPTIONAL
    private var _vendor_format: Option<UInt16> = None //[2] Unsigned16 OPTIONAL

    public mut prop format_type: AuthenticationFactorType_Enum {
        get() { return _format_type }
        set(arg_Value) { _format_type = arg_Value }
    }
    public mut prop vendor_id: Option<UInt16> {
        get() { return _vendor_id }
        set(arg_Value) { _vendor_id = arg_Value }
    }
    public mut prop vendor_format: Option<UInt16> {
        get() { return _vendor_format }
        set(arg_Value) { _vendor_format = arg_Value }
    }

    public init() {
    }

    public init(arg_format_type: AuthenticationFactorType_Enum) {
        this._format_type = arg_format_type
        this._vendor_id = None
        this._vendor_format = None
    }
}

