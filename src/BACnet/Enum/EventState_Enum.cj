public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum EventState_Enum <: IFromUInt32<EventState_Enum> & IToUInt32 & ToString & IFromString<EventState_Enum> {
    | normal // (0)
    | fault // (1)
    | offnormal // (2)
    | high_limit // (3)
    | low_limit // (4)
    | life_safety_alarm // (5)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): EventState_Enum {
        match (arg_tag) {
            case 0 => EventState_Enum.normal
            case 1 => EventState_Enum.fault
            case 2 => EventState_Enum.offnormal
            case 3 => EventState_Enum.high_limit
            case 4 => EventState_Enum.low_limit
            case 5 => EventState_Enum.life_safety_alarm
            case x where x <= 63 => EventState_Enum.reserved(x)
            case y where y > 63 && y <= 65535 => EventState_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case EventState_Enum.normal => 0
            case EventState_Enum.fault => 1
            case EventState_Enum.offnormal => 2
            case EventState_Enum.high_limit => 3
            case EventState_Enum.low_limit => 4
            case EventState_Enum.life_safety_alarm => 5
            case EventState_Enum.reserved(x) => x
            case EventState_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case EventState_Enum.normal => "normal"
            case EventState_Enum.fault => "fault"
            case EventState_Enum.offnormal => "offnormal"
            case EventState_Enum.high_limit => "high_limit"
            case EventState_Enum.low_limit => "low_limit"
            case EventState_Enum.life_safety_alarm => "life_safety_alarm"
            case EventState_Enum.reserved(x) => "reserved_${x}"
            case EventState_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): EventState_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "normal" => EventState_Enum.normal
            case "fault" => EventState_Enum.fault
            case "offnormal" => EventState_Enum.offnormal
            case "high_limit" => EventState_Enum.high_limit
            case "low_limit" => EventState_Enum.low_limit
            case "life_safety_alarm" => EventState_Enum.life_safety_alarm
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => EventState_Enum.reserved(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _n where _n.startsWith("non_standardized_") =>
                let _numStr = _n.removePrefix("non_standardized_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => EventState_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_916
--21.6 Base Types

BACnetEventState ::= ENUMERATED {
 normal (0),
 fault (1),
 offnormal (2),
 high-limit (3),
 low-limit (4),
 life-safety-alarm (5),
 ...
 }
 -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values
 -- 64-65535 may be used by others subject to the procedures and constraints described
 -- in Clause 23. The last enumeration used in this version is 5.
*/
