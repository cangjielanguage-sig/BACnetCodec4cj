public package BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Object_Access_Services
import BACnetCodec4cj.BACnet.Types.Unconfirmed_Service_Productions.Unconfirmed_Service_Request.Unconfirmed_Service_Request

/*
--ISO_16484_5_2022_Page_879
--21.3.2 Unconfirmed Object Access Services

WriteGroup-Request ::= SEQUENCE {
 group-number [0] Unsigned32,
 write-priority [1] Unsigned (1..16),
 change-list [2] SEQUENCE OF BACnetGroupChannelValue,
 inhibit-delay [3] BOOLEAN OPTIONAL
 }
--ISO_16484_5_2022_Page_879
--21.3.3 Unconfirmed Remote Device Management Services
*/

public class WriteGroup_Request <: Unconfirmed_Service_Request {
    private var _group_number: UInt32 = 0u32 //[0] Unsigned32
    private var _write_priority: UInt32 = 0u32 //[1] Unsigned (1..16)
    private var _change_list: UInt8 = 0u8 //[2] SEQUENCE OF BACnetGroupChannelValue
    private var _inhibit_delay: Option<Bool> = None //[3] BOOLEAN OPTIONAL

    public mut prop group_number: UInt32 {
        get() { return _group_number }
        set(arg_Value) { _group_number = arg_Value }
    }
    public mut prop write_priority: UInt32 {
        get() { return _write_priority }
        set(arg_Value) { _write_priority = arg_Value }
    }
    public mut prop change_list: UInt8 {
        get() { return _change_list }
        set(arg_Value) { _change_list = arg_Value }
    }
    public mut prop inhibit_delay: Option<Bool> {
        get() { return _inhibit_delay }
        set(arg_Value) { _inhibit_delay = arg_Value }
    }

    public init() {
    }

    public init(arg_group_number: UInt32, arg_write_priority: UInt32, arg_change_list: UInt8) {
        this._group_number = arg_group_number
        this._write_priority = arg_write_priority
        this._change_list = arg_change_list
        this._inhibit_delay = None
    }
}

