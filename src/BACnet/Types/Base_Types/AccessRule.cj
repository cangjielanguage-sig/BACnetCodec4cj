public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_894
--21.6 Base Types

BACnetAccessRule ::= SEQUENCE {
 time-range-specifier [0] ENUMERATED {
    specified (0),
    always (1)
   },
 time-range [1] BACnetDeviceObjectPropertyReference OPTIONAL,
   -- to be present if time-range-specifier has the value "specified"
 location-specifier  [2] ENUMERATED {
     specified (0),
     all (1)
    },
 location  [3] BACnetDeviceObjectReference OPTIONAL,
    -- to be present if location-specifier has the value "specified"
 enable  [4] BOOLEAN
 }
*/

public class AccessRule {
    private var _time_range_specifier: UInt8 = 0u8 //[0] ENUMERATED {
    private var _time_range: Option<DeviceObjectPropertyReference> = None //[1] BACnetDeviceObjectPropertyReference OPTIONAL
    private var _location_specifier: UInt8 = 0u8 //[2] ENUMERATED {
    private var _location: Option<DeviceObjectReference> = None //[3] BACnetDeviceObjectReference OPTIONAL
    private var _enable: Bool = false //[4] BOOLEAN

    public mut prop time_range_specifier: UInt8 {
        get() { return _time_range_specifier }
        set(arg_Value) { _time_range_specifier = arg_Value }
    }
    public mut prop time_range: Option<DeviceObjectPropertyReference> {
        get() { return _time_range }
        set(arg_Value) { _time_range = arg_Value }
    }
    public mut prop location_specifier: UInt8 {
        get() { return _location_specifier }
        set(arg_Value) { _location_specifier = arg_Value }
    }
    public mut prop location: Option<DeviceObjectReference> {
        get() { return _location }
        set(arg_Value) { _location = arg_Value }
    }
    public mut prop enable: Bool {
        get() { return _enable }
        set(arg_Value) { _enable = arg_Value }
    }

    public init() {
    }

    public init(arg_time_range_specifier: UInt8, arg_location_specifier: UInt8, arg_enable: Bool) {
        this._time_range_specifier = arg_time_range_specifier
        this._time_range = None
        this._location_specifier = arg_location_specifier
        this._location = None
        this._enable = arg_enable
    }
}

