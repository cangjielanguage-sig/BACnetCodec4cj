public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum TagClass_Choice <: IFromUInt8<TagClass_Choice> & IToUInt8 {
    | applicationTag
    | contextSpecificTag

    public static func fromUInt8(tag: UInt8): TagClass_Choice {
        match (tag) {
            case 0b0000_0000 => TagClass_Choice.applicationTag
            case 0b0000_1000 => TagClass_Choice.contextSpecificTag

            case _ => throw DecodeException("协议错误.无效标签")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case TagClass_Choice.applicationTag => 0b0000_0000
            case TagClass_Choice.contextSpecificTag => 0b0000_1000
        }
    }
}