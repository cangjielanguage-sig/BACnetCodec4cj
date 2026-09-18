public package BACnetCodec4cj.BACnet.Types.Base_Types


/*
--ISO_16484_5_2022_Page_895
--21.6 Base Types

BACnetAssignedAccessRights ::= SEQUENCE {
 assigned-access-rights  [0] BACnetDeviceObjectReference,
 enable [1] BOOLEAN
 }
*/

public class AssignedAccessRights {
    private var _assigned_access_rights: DeviceObjectReference = DeviceObjectReference() //[0] BACnetDeviceObjectReference
    private var _enable: Bool = false //[1] BOOLEAN

    public mut prop assigned_access_rights: DeviceObjectReference {
        get() { return _assigned_access_rights }
        set(arg_Value) { _assigned_access_rights = arg_Value }
    }
    public mut prop enable: Bool {
        get() { return _enable }
        set(arg_Value) { _enable = arg_Value }
    }

    public init() {
    }

    public init(arg_assigned_access_rights: DeviceObjectReference, arg_enable: Bool) {
        this._assigned_access_rights = arg_assigned_access_rights
        this._enable = arg_enable
    }
}

