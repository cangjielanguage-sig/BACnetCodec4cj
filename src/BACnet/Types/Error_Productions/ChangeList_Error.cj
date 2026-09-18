public package BACnetCodec4cj.BACnet.Types.Error_Productions


/*
--ISO_16484_5_2022_Page_882
--21.4 Error Productions

ChangeList-Error ::= SEQUENCE {
 error-type [0] Error,
 first-failed-element-number [1] Unsigned
 }
--ISO_16484_5_2022_Page_883
*/

public class ChangeList_Error {
    private var _error_type: Error = Error() //[0] Error
    private var _first_failed_element_number: UInt32 = 0u32 //[1] Unsigned

    public mut prop error_type: Error {
        get() { return _error_type }
        set(arg_Value) { _error_type = arg_Value }
    }
    public mut prop first_failed_element_number: UInt32 {
        get() { return _first_failed_element_number }
        set(arg_Value) { _first_failed_element_number = arg_Value }
    }

    public init() {
    }

    public init(arg_error_type: Error, arg_first_failed_element_number: UInt32) {
        this._error_type = arg_error_type
        this._first_failed_element_number = arg_first_failed_element_number
    }
}

