public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum DoorValue_Enum <: IFromUInt32<DoorValue_Enum> & IToUInt32 & ToString & IFromString<DoorValue_Enum> {
    | lock // (0)
    | unlock // (1)
    | pulse_unlock // (2)
    | extended_pulse_unlock // (3)

    public static func fromUInt32(arg_tag: UInt32): DoorValue_Enum {
        match (arg_tag) {
            case 0 => DoorValue_Enum.lock
            case 1 => DoorValue_Enum.unlock
            case 2 => DoorValue_Enum.pulse_unlock
            case 3 => DoorValue_Enum.extended_pulse_unlock
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case DoorValue_Enum.lock => 0
            case DoorValue_Enum.unlock => 1
            case DoorValue_Enum.pulse_unlock => 2
            case DoorValue_Enum.extended_pulse_unlock => 3
        }
    }

    public func toString(): String {
        match (this) {
            case DoorValue_Enum.lock => "lock"
            case DoorValue_Enum.unlock => "unlock"
            case DoorValue_Enum.pulse_unlock => "pulse_unlock"
            case DoorValue_Enum.extended_pulse_unlock => "extended_pulse_unlock"
        }
    }

    public static func fromString(arg_str: String): DoorValue_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "lock" => DoorValue_Enum.lock
            case "unlock" => DoorValue_Enum.unlock
            case "pulse_unlock" => DoorValue_Enum.pulse_unlock
            case "extended_pulse_unlock" => DoorValue_Enum.extended_pulse_unlock
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_902
--21.6 Base Types

BACnetDoorValue ::= ENUMERATED {
 lock (0),
 unlock (1),
 pulse-unlock (2),
 extended-pulse-unlock (3)
 }
*/
