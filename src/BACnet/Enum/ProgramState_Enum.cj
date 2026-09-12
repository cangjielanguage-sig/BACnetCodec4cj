public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum ProgramState_Enum <: IFromUInt32<ProgramState_Enum> & IToUInt32 & ToString & IFromString<ProgramState_Enum> {
    | idle // (0)
    | loading // (1)
    | running // (2)
    | waiting // (3)
    | halted // (4)
    | unloading // (5)

    public static func fromUInt32(arg_tag: UInt32): ProgramState_Enum {
        match (arg_tag) {
            case 0 => ProgramState_Enum.idle
            case 1 => ProgramState_Enum.loading
            case 2 => ProgramState_Enum.running
            case 3 => ProgramState_Enum.waiting
            case 4 => ProgramState_Enum.halted
            case 5 => ProgramState_Enum.unloading
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case ProgramState_Enum.idle => 0
            case ProgramState_Enum.loading => 1
            case ProgramState_Enum.running => 2
            case ProgramState_Enum.waiting => 3
            case ProgramState_Enum.halted => 4
            case ProgramState_Enum.unloading => 5
        }
    }

    public func toString(): String {
        match (this) {
            case ProgramState_Enum.idle => "idle"
            case ProgramState_Enum.loading => "loading"
            case ProgramState_Enum.running => "running"
            case ProgramState_Enum.waiting => "waiting"
            case ProgramState_Enum.halted => "halted"
            case ProgramState_Enum.unloading => "unloading"
        }
    }

    public static func fromString(arg_str: String): ProgramState_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "idle" => ProgramState_Enum.idle
            case "loading" => ProgramState_Enum.loading
            case "running" => ProgramState_Enum.running
            case "waiting" => ProgramState_Enum.waiting
            case "halted" => ProgramState_Enum.halted
            case "unloading" => ProgramState_Enum.unloading
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_934
--21.6 Base Types

BACnetProgramState ::= ENUMERATED {
 idle (0),
 loading (1),
 running (2),
 waiting (3),
 halted (4),
 unloading (5)
 }
*/
