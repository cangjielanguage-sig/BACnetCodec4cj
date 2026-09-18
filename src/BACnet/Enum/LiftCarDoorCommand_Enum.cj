public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum LiftCarDoorCommand_Enum <: IFromUInt32<LiftCarDoorCommand_Enum> & IToUInt32 & ToString & IFromString<LiftCarDoorCommand_Enum> {
    | none // (0)
    | `open` // (1)
    | close // (2)

    public static func fromUInt32(arg_tag: UInt32): LiftCarDoorCommand_Enum {
        match (arg_tag) {
            case 0 => LiftCarDoorCommand_Enum.none
            case 1 => LiftCarDoorCommand_Enum.`open`
            case 2 => LiftCarDoorCommand_Enum.close
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case LiftCarDoorCommand_Enum.none => 0
            case LiftCarDoorCommand_Enum.`open` => 1
            case LiftCarDoorCommand_Enum.close => 2
        }
    }

    public func toString(): String {
        match (this) {
            case LiftCarDoorCommand_Enum.none => "none"
            case LiftCarDoorCommand_Enum.`open` => "open"
            case LiftCarDoorCommand_Enum.close => "close"
        }
    }

    public static func fromString(arg_str: String): LiftCarDoorCommand_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "none" => LiftCarDoorCommand_Enum.none
            case "open" => LiftCarDoorCommand_Enum.`open`
            case "close" => LiftCarDoorCommand_Enum.close
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_921
--21.6 Base Types

BACnetLiftCarDoorCommand ::= ENUMERATED {
 none (0),
 open (1),
 close (2)
 }
*/
