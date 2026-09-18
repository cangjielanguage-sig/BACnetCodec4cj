public package BACnetCodec4cj.BACnet.Types.Error_Productions


/*
--ISO_16484_5_2022_Page_890
--21.4 Error Productions

VTClose-Error ::= SEQUENCE {
 error-type   [0] Error,
 list-of-vt-session-identifiers [1] SEQUENCE OF Unsigned8 OPTIONAL
}
--ISO_16484_5_2022_Page_891
--21.5 Application Types
-- The following productions are the definitions of the Application datatypes.
-- See Clause 20.2.1.4.
-- NULL [APPLICATION 0], equivalent to [UNIVERSAL 5]
-- BOOLEAN [APPLICATION 1], equivalent to [UNIVERSAL 1]
*/

public class VTClose_Error {
    private var _error_type: Error = Error() //[0] Error
    private var _list_of_vt_session_identifiers: Option<UInt8> = None //[1] SEQUENCE OF Unsigned8 OPTIONAL

    public mut prop error_type: Error {
        get() { return _error_type }
        set(arg_Value) { _error_type = arg_Value }
    }
    public mut prop list_of_vt_session_identifiers: Option<UInt8> {
        get() { return _list_of_vt_session_identifiers }
        set(arg_Value) { _list_of_vt_session_identifiers = arg_Value }
    }

    public init() {
    }

    public init(arg_error_type: Error) {
        this._error_type = arg_error_type
        this._list_of_vt_session_identifiers = None
    }
}

