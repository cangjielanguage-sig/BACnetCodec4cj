public package BACnetCodec4cj.BACnet.Types.Error_Productions

import BACnetCodec4cj.BACnet.Types.Base_Types.*

/*
--ISO_16484_5_2022_Page_890
--21.4 Error Productions

WritePropertyMultiple-Error ::= SEQUENCE {
 error-type [0] Error,
 first-failed-write-attempt [1] BACnetObjectPropertyReference
 }
*/

public class WritePropertyMultiple_Error {
    private var _error_type: Error = Error() //[0] Error
    private var _first_failed_write_attempt: ObjectPropertyReference = ObjectPropertyReference() //[1] BACnetObjectPropertyReference

    public mut prop error_type: Error {
        get() { return _error_type }
        set(arg_Value) { _error_type = arg_Value }
    }
    public mut prop first_failed_write_attempt: ObjectPropertyReference {
        get() { return _first_failed_write_attempt }
        set(arg_Value) { _first_failed_write_attempt = arg_Value }
    }

    public init() {
    }

    public init(arg_error_type: Error, arg_first_failed_write_attempt: ObjectPropertyReference) {
        this._error_type = arg_error_type
        this._first_failed_write_attempt = arg_first_failed_write_attempt
    }
}

