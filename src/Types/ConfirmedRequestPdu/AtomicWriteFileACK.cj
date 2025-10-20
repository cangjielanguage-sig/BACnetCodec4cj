public package BACnetCodec4cj.Types.ConfirmedRequestPdu
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*


public enum AtomicWriteFileACK  
<: IFromUInt8<AtomicWriteFileACK> 
& IToUInt8
{
    |File_start_position  // [0]
    |File_start_record    // [1]

    // ==================== 正向转换函数 (Int8 → 枚举) ====================
    public static func 从UInt8转换而来(标签: UInt8): AtomicWriteFileACK 
    {
        match (标签) 
        {
            // 合法分支
            case 0 => AtomicWriteFileACK.File_start_position
            case 1 => AtomicWriteFileACK.File_start_record
            
            // 非法标签值（直接抛出字符串描述错误）
            case _ => throw BACnetDecodeErro("协议错误.无效服务标签")
        }
    }
    public static func fromUInt8(标签: UInt8): AtomicWriteFileACK 
    {
        match (标签) 
        {
            // 合法分支
            case 0 => AtomicWriteFileACK.File_start_position
            case 1 => AtomicWriteFileACK.File_start_record
            
            // 非法标签值（直接抛出字符串描述错误）
            case _ => throw BACnetDecodeErro("Encountered an undefined value when decoding the AtomicWriteFileACK field.")
        }
    }

    // ==================== 反向转换函数 (枚举 → Int8) ====================
    public func 转换到UInt8(): UInt8 
    {
        match (this) 
        {
            // 显式列出所有枚举分支
            case AtomicWriteFileACK.File_start_position => 0
            case AtomicWriteFileACK.File_start_record   => 1
        }
    }
    public func toUInt8(): UInt8 
    {
        match (this) 
        {
            // 显式列出所有枚举分支
            case AtomicWriteFileACK.File_start_position => 0
            case AtomicWriteFileACK.File_start_record   => 1
        }
    }
    
}
