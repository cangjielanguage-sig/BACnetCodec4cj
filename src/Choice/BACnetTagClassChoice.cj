public package BACnetCodec4cj.Choice

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*

public enum BACnetTagClassChoice <: IFromUInt8<BACnetTagClassChoice> & IToUInt8 {
    | applicationTag
    | contextSpecificTag

    public static func fromUInt8(tag: UInt8): BACnetTagClassChoice {
        match (tag) {
            case 0b0000_0000 => BACnetTagClassChoice.applicationTag
            case 0b0000_1000 => BACnetTagClassChoice.contextSpecificTag

            case _ => throw BACnetDecodeError("协议错误.无效标签")
        }
    }

    public func toUInt8(): UInt8 {
        match (this) {
            case BACnetTagClassChoice.applicationTag => 0b0000_0000
            case BACnetTagClassChoice.contextSpecificTag => 0b0000_1000
        }
    }
}