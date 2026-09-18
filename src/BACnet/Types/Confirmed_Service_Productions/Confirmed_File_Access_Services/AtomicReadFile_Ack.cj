public package BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_File_Access_Services

import BACnetCodec4cj.BACnet.Types.Confirmed_Service_Productions.Confirmed_Service_ACK.Confirmed_Service_ACK

/*
--ISO_16484_5_2022_Page_873
--21.2.2 Confirmed File Access Services

AtomicReadFile-ACK ::= SEQUENCE {
 end-of-file BOOLEAN,
 access-method CHOICE {
    stream-access [0] SEQUENCE {
       file-start-position  INTEGER,
       file-data   OCTET STRING
       },
    record-access [1] SEQUENCE {
       file-start-record  INTEGER,
       returned-record-count Unsigned,
       file-record-data  SEQUENCE OF OCTET STRING
       }
    }
 }
--ISO_16484_5_2022_Page_874
*/

public class AtomicReadFile_Ack <: Confirmed_Service_ACK {
    private var _end_of_file: Bool = false // BOOLEAN
    private var _access_method: UInt8 = 0u8 // CHOICE {

    public mut prop end_of_file: Bool {
        get() { return _end_of_file }
        set(arg_Value) { _end_of_file = arg_Value }
    }
    public mut prop access_method: UInt8 {
        get() { return _access_method }
        set(arg_Value) { _access_method = arg_Value }
    }

    public init() {
    }

    public init(arg_end_of_file: Bool, arg_access_method: UInt8) {
        this._end_of_file = arg_end_of_file
        this._access_method = arg_access_method
    }
}

