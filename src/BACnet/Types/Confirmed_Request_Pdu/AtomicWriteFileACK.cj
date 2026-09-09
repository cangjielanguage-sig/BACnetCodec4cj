public package BACnetCodec4cj.BACnet.Types.Confirmed_Request_Pdu

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*

public enum AtomicWriteFileACK <: IFromUInt8<AtomicWriteFileACK> & IToUInt8 {
    | File_start_position // [0]
    | File_start_record // [1]

    // ==================== 正向转换函数 (Int8 → 枚举) ====================
    public static func fromUInt8(tag: UInt8): AtomicWriteFileACK {
        match (tag) {
            // 合法分支
            case 0 => AtomicWriteFileACK.File_start_position
            case 1 => AtomicWriteFileACK.File_start_record

            // 非法标签值
            case _ => throw DecodeException(
                "Encountered an undefined value when decoding the AtomicWriteFileACK field.")
        }
    }

    // ==================== 反向转换函数 (枚举 → Int8) ====================
    public func toUInt8(): UInt8 {
        match (this) {
            // 显式列出所有枚举分支
            case AtomicWriteFileACK.File_start_position => 0
            case AtomicWriteFileACK.File_start_record => 1
        }
    }
}
