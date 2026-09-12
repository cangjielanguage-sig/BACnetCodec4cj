public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum RejectReason_Enum <: IFromUInt32<RejectReason_Enum> & IToUInt32 & ToString & IFromString<RejectReason_Enum> {
    | other // (0)
    | buffer_overflow // (1)
    | inconsistent_parameters // (2)
    | invalid_parameter_data_type // (3)
    | invalid_tag // (4)
    | missing_required_parameter // (5)
    | parameter_out_of_range // (6)
    | too_many_arguments // (7)
    | undefined_enumeration // (8)
    | unrecognized_service // (9)
    | invalid_data_encoding // (10)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): RejectReason_Enum {
        match (arg_tag) {
            case 0 => RejectReason_Enum.other
            case 1 => RejectReason_Enum.buffer_overflow
            case 2 => RejectReason_Enum.inconsistent_parameters
            case 3 => RejectReason_Enum.invalid_parameter_data_type
            case 4 => RejectReason_Enum.invalid_tag
            case 5 => RejectReason_Enum.missing_required_parameter
            case 6 => RejectReason_Enum.parameter_out_of_range
            case 7 => RejectReason_Enum.too_many_arguments
            case 8 => RejectReason_Enum.undefined_enumeration
            case 9 => RejectReason_Enum.unrecognized_service
            case 10 => RejectReason_Enum.invalid_data_encoding
            case x where x <= 63 => RejectReason_Enum.reserved(x)
            case y where y > 63 && y <= 255 => RejectReason_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case RejectReason_Enum.other => 0
            case RejectReason_Enum.buffer_overflow => 1
            case RejectReason_Enum.inconsistent_parameters => 2
            case RejectReason_Enum.invalid_parameter_data_type => 3
            case RejectReason_Enum.invalid_tag => 4
            case RejectReason_Enum.missing_required_parameter => 5
            case RejectReason_Enum.parameter_out_of_range => 6
            case RejectReason_Enum.too_many_arguments => 7
            case RejectReason_Enum.undefined_enumeration => 8
            case RejectReason_Enum.unrecognized_service => 9
            case RejectReason_Enum.invalid_data_encoding => 10
            case RejectReason_Enum.reserved(x) => x
            case RejectReason_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case RejectReason_Enum.other => "other"
            case RejectReason_Enum.buffer_overflow => "buffer_overflow"
            case RejectReason_Enum.inconsistent_parameters => "inconsistent_parameters"
            case RejectReason_Enum.invalid_parameter_data_type => "invalid_parameter_data_type"
            case RejectReason_Enum.invalid_tag => "invalid_tag"
            case RejectReason_Enum.missing_required_parameter => "missing_required_parameter"
            case RejectReason_Enum.parameter_out_of_range => "parameter_out_of_range"
            case RejectReason_Enum.too_many_arguments => "too_many_arguments"
            case RejectReason_Enum.undefined_enumeration => "undefined_enumeration"
            case RejectReason_Enum.unrecognized_service => "unrecognized_service"
            case RejectReason_Enum.invalid_data_encoding => "invalid_data_encoding"
            case RejectReason_Enum.reserved(x) => "reserved_${x}"
            case RejectReason_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): RejectReason_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "other" => RejectReason_Enum.other
            case "buffer_overflow" => RejectReason_Enum.buffer_overflow
            case "inconsistent_parameters" => RejectReason_Enum.inconsistent_parameters
            case "invalid_parameter_data_type" => RejectReason_Enum.invalid_parameter_data_type
            case "invalid_tag" => RejectReason_Enum.invalid_tag
            case "missing_required_parameter" => RejectReason_Enum.missing_required_parameter
            case "parameter_out_of_range" => RejectReason_Enum.parameter_out_of_range
            case "too_many_arguments" => RejectReason_Enum.too_many_arguments
            case "undefined_enumeration" => RejectReason_Enum.undefined_enumeration
            case "unrecognized_service" => RejectReason_Enum.unrecognized_service
            case "invalid_data_encoding" => RejectReason_Enum.invalid_data_encoding
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => RejectReason_Enum.reserved(x)
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
                        case Some(x) => RejectReason_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_882
--21.4 Error Productions

BACnetRejectReason ::= ENUMERATED {
 other (0),
 buffer-overflow (1),
 inconsistent-parameters (2),
 invalid-parameter-data-type (3),
 invalid-tag (4),
 missing-required-parameter (5),
 parameter-out-of-range (6),
 too-many-arguments (7),
 undefined-enumeration (8),
 unrecognized-service (9),
 invalid-data-encoding (10),
 ...
 }
 -- Enumerated values 0-63 are reserved for definition by ASHRAE. Enumerated values 64-255
 -- may be used by others subject to the procedures and constraints described in Clause 23.
*/
