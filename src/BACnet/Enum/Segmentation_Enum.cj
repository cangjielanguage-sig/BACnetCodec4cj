public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum Segmentation_Enum <: IFromUInt32<Segmentation_Enum> & IToUInt32 & ToString & IFromString<Segmentation_Enum> {
    | segmented_both // (0)
    | segmented_transmit // (1)
    | segmented_receive // (2)
    | no_segmentation // (3)

    public static func fromUInt32(arg_tag: UInt32): Segmentation_Enum {
        match (arg_tag) {
            case 0 => Segmentation_Enum.segmented_both
            case 1 => Segmentation_Enum.segmented_transmit
            case 2 => Segmentation_Enum.segmented_receive
            case 3 => Segmentation_Enum.no_segmentation
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case Segmentation_Enum.segmented_both => 0
            case Segmentation_Enum.segmented_transmit => 1
            case Segmentation_Enum.segmented_receive => 2
            case Segmentation_Enum.no_segmentation => 3
        }
    }

    public func toString(): String {
        match (this) {
            case Segmentation_Enum.segmented_both => "segmented_both"
            case Segmentation_Enum.segmented_transmit => "segmented_transmit"
            case Segmentation_Enum.segmented_receive => "segmented_receive"
            case Segmentation_Enum.no_segmentation => "no_segmentation"
        }
    }

    public static func fromString(arg_str: String): Segmentation_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "segmented_both" => Segmentation_Enum.segmented_both
            case "segmented_transmit" => Segmentation_Enum.segmented_transmit
            case "segmented_receive" => Segmentation_Enum.segmented_receive
            case "no_segmentation" => Segmentation_Enum.no_segmentation
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_954
--21.6 Base Types

BACnetSegmentation ::= ENUMERATED {
 segmented-both (0),
 segmented-transmit (1),
 segmented-receive (2),
 no-segmentation (3)
 }
*/
