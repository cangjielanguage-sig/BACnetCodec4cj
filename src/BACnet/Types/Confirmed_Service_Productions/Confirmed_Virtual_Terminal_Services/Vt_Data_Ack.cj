public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Virtual_Terminal_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_ACK.Confirmed_Service_ACK


/*
--ISO_16484_5_2022_Page_877
--21.2.5 Confirmed Virtual Terminal Services

VT-Data-ACK ::= SEQUENCE {
 all-new-data-accepted [0] BOOLEAN,
 accepted-octet-count [1] Unsigned OPTIONAL – present only if all-new-data-accepted = FALSE
 }
--ISO_16484_5_2022_Page_878
--21.3 Unconfirmed Service Productions
*/

public class Vt_Data_Ack <:Confirmed_Service_ACK {
    private var _all_new_data_accepted: Bool = false //[0] BOOLEAN
    private var _accepted_octet_count: Option<UInt32> = None //[1] Unsigned OPTIONAL – present only if all-new-data-accepted = FALSE

    public mut prop all_new_data_accepted: Bool {
        get() { return _all_new_data_accepted }
        set(arg_Value) { _all_new_data_accepted = arg_Value }
    }
    public mut prop accepted_octet_count: Option<UInt32> {
        get() { return _accepted_octet_count }
        set(arg_Value) { _accepted_octet_count = arg_Value }
    }

    public init() {
    }

    public init(arg_all_new_data_accepted: Bool) {
        this._all_new_data_accepted = arg_all_new_data_accepted
        this._accepted_octet_count = None
    }
}

