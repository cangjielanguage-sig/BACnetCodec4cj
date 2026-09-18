public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_924
--21.6 Base Types

BACnetNameValueCollection ::= SEQUENCE {
 members [0]  SEQUENCE OF BACnetNameValue
 }
*/

public class NameValueCollection {
    private var _members: UInt8 = 0u8 //[0] SEQUENCE OF BACnetNameValue

    public mut prop members: UInt8 {
        get() { return _members }
        set(arg_Value) { _members = arg_Value }
    }

    public init() {
    }

    public init(arg_members: UInt8) {
        this._members = arg_members
    }
}

