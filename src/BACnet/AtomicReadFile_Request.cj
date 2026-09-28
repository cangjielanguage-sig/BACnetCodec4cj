public package BACnetCodec4cj.BACnet

/*
--ISO_16484_5_2022_Page_873
--21.2.2 Confirmed File Access Services

AtomicReadFile-Request ::= SEQUENCE {
 file-identifier BACnetObjectIdentifier,
 access-method CHOICE {
    stream-access [0] SEQUENCE {
       file-start-position  INTEGER,
       requested-octet-count Unsigned
       },
    record-access [1] SEQUENCE {
       file-start-record  INTEGER,
       requested-record-count Unsigned
       }
    }
 }
*/

public class AtomicReadFile_Request <: Confirmed_Service_Request {
    private var _file_identifier: BACnet_ObjectIdentifier = BACnet_ObjectIdentifier() // BACnetObjectIdentifier
    private var _access_method: UInt8 = 0u8 // CHOICE {

    public mut prop file_identifier: BACnet_ObjectIdentifier {
        get() { return _file_identifier }
        set(arg_Value) { _file_identifier = arg_Value }
    }
    public mut prop access_method: UInt8 {
        get() { return _access_method }
        set(arg_Value) { _access_method = arg_Value }
    }

    public init() {
    }

    public init(arg_file_identifier: BACnet_ObjectIdentifier, arg_access_method: UInt8) {
        this._file_identifier = arg_file_identifier
        this._access_method = arg_access_method
    }
}

