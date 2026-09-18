public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum FaultParameter_Choice <: IFromUInt8<FaultParameter_Choice> & IToUInt8 & ToString & IFromString<FaultParameter_Choice> {
    | none // none  [0] NULL,
    | fault_characterstring // fault-characterstring [1] SEQUENCE {
    | fault_extended // fault-extended  [2] SEQUENCE {
    | fault_life_safety // fault-life-safety  [3] SEQUENCE {
    | fault_state // fault-state  [4] SEQUENCE {
    | fault_status_flags // fault-status-flags  [5] SEQUENCE {
    | fault_out_of_range // fault-out-of-range  [6] SEQUENCE {
    | fault_listed // fault-listed  [7] SEQUENCE {

    public static func fromUInt8(tag: UInt8): FaultParameter_Choice {
        match (tag) {
            case 0 => FaultParameter_Choice.none
            case 1 => FaultParameter_Choice.fault_characterstring
            case 2 => FaultParameter_Choice.fault_extended
            case 3 => FaultParameter_Choice.fault_life_safety
            case 4 => FaultParameter_Choice.fault_state
            case 5 => FaultParameter_Choice.fault_status_flags
            case 6 => FaultParameter_Choice.fault_out_of_range
            case 7 => FaultParameter_Choice.fault_listed
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case FaultParameter_Choice.none => 0
            case FaultParameter_Choice.fault_characterstring => 1
            case FaultParameter_Choice.fault_extended => 2
            case FaultParameter_Choice.fault_life_safety => 3
            case FaultParameter_Choice.fault_state => 4
            case FaultParameter_Choice.fault_status_flags => 5
            case FaultParameter_Choice.fault_out_of_range => 6
            case FaultParameter_Choice.fault_listed => 7
        }
    }

    public func toString(): String {
        match (this) {
            case FaultParameter_Choice.none => "none"
            case FaultParameter_Choice.fault_characterstring => "fault_characterstring"
            case FaultParameter_Choice.fault_extended => "fault_extended"
            case FaultParameter_Choice.fault_life_safety => "fault_life_safety"
            case FaultParameter_Choice.fault_state => "fault_state"
            case FaultParameter_Choice.fault_status_flags => "fault_status_flags"
            case FaultParameter_Choice.fault_out_of_range => "fault_out_of_range"
            case FaultParameter_Choice.fault_listed => "fault_listed"
        }
    }

    public static func fromString(arg_str: String): FaultParameter_Choice {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "none" => FaultParameter_Choice.none
            case "fault_characterstring" => FaultParameter_Choice.fault_characterstring
            case "fault_extended" => FaultParameter_Choice.fault_extended
            case "fault_life_safety" => FaultParameter_Choice.fault_life_safety
            case "fault_state" => FaultParameter_Choice.fault_state
            case "fault_status_flags" => FaultParameter_Choice.fault_status_flags
            case "fault_out_of_range" => FaultParameter_Choice.fault_out_of_range
            case "fault_listed" => FaultParameter_Choice.fault_listed
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_917
--21 FORMAL DESCRIPTION OF APPLICATION PROTOCOL DATA UNITS

BACnetFaultParameter ::= CHOICE {
 none  [0] NULL,
 fault-characterstring [1] SEQUENCE {
    list-of-fault-values [0] SEQUENCE OF CharacterString
    },
 fault-extended  [2] SEQUENCE {
    vendor-id  [0] Unsigned16,
    extended-fault-type [1] Unsigned,
    parameters  [2] SEQUENCE OF CHOICE {
     null   NULL,
     real   REAL,
     unsigned  Unsigned,
     boolean   BOOLEAN,
     integer   INTEGER,
     double   Double,
     octetstring  OCTET STRING,
     characterstring  CharacterString,
     bitstring   BIT STRING,
     enumerated  ENUMERATED,
     date   Date,
     time   Time,
     objectidentifier  BACnetObjectIdentifier,
     reference   [0] BACnetDeviceObjectPropertyReference
     }
    },
 fault-life-safety  [3] SEQUENCE {
    list-of-fault-values [0] SEQUENCE OF BACnetLifeSafetyState,
    mode-property-reference [1] BACnetDeviceObjectPropertyReference
    },
 fault-state  [4] SEQUENCE {
    list-of-fault-values [0] SEQUENCE OF BACnetPropertyStates
    },
 fault-status-flags  [5] SEQUENCE {
    status-flags-reference [0]  BACnetDeviceObjectPropertyReference
    },
 fault-out-of-range  [6] SEQUENCE {
    min-normal-value [0]  CHOICE {
     real   REAL,
     unsigned  Unsigned,
     double   Double,
     integer   INTEGER
     },
    max-normal-value [1]  CHOICE {
     real   REAL,
     unsigned  Unsigned,
     double   Double,
     integer   INTEGER
     }
    },
 fault-listed  [7] SEQUENCE {
    fault-list-reference [0] BACnetDeviceObjectPropertyReference
    }
 }
*/
