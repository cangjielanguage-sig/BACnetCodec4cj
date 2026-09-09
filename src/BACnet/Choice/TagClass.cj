public package BACnetCodec4cj.BACnet.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum TagClass <: IFromUInt8<TagClass> & IToUInt8 {
    | applicationTag
    | contextSpecificTag

    public static func fromUInt8(tag: UInt8): TagClass {
        match (tag) {
            case 0b0000_0000 => TagClass.applicationTag
            case 0b0000_1000 => TagClass.contextSpecificTag

            case _ => throw DecodeException("协议错误.无效标签")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case TagClass.applicationTag => 0b0000_0000
            case TagClass.contextSpecificTag => 0b0000_1000
        }
    }
}