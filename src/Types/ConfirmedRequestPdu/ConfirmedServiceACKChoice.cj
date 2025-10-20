public package BACnetCodec4cj.Types.ConfirmedRequestPdu
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*


public enum ConfirmedServiceACKChoice    
<: IFromUInt8<ConfirmedServiceACKChoice> 
& IToUInt8
{
    // ==================== Alarm and Event Services ====================
    |Get_alarm_summary           // [3]
    |Get_enrollment_summary      // [4]
    |Get_event_information       // [29]

    // ==================== File Access Services ====================
    |Atomic_read_file            // [6]
    |Atomic_write_file           // [7]

    // ==================== Object Access Services ====================
    |Create_object               // [10]
    |Read_property               // [12]
    |Read_property_multiple      // [14]
    |Read_range                  // [26]
    |Audit_log_query             // [33]

    // ==================== Remote Device Management ====================
    |Confirmed_private_transfer  // [18]

    // ==================== Virtual Terminal Services ====================
    |Vt_open                     // [21]
    |Vt_data                     // [23]

    // ==================== Removed Services ====================
    |Authenticate                // [24] (已删除)
    |Read_property_conditional   // [13] (已删除)

    public static func 从UInt8转换而来(标签: UInt8): ConfirmedServiceACKChoice 
    {
        match (标签) 
        {
            // ========== 合法服务分支 ==========
            // Alarm and Event Services
            case 3  => ConfirmedServiceACKChoice.Get_alarm_summary
            case 4  => ConfirmedServiceACKChoice.Get_enrollment_summary
            case 29 => ConfirmedServiceACKChoice.Get_event_information

            // File Access Services
            case 6  => ConfirmedServiceACKChoice.Atomic_read_file
            case 7  => ConfirmedServiceACKChoice.Atomic_write_file

            // Object Access Services
            case 10 => ConfirmedServiceACKChoice.Create_object
            case 12 => ConfirmedServiceACKChoice.Read_property
            case 14 => ConfirmedServiceACKChoice.Read_property_multiple
            case 26 => ConfirmedServiceACKChoice.Read_range
            case 33 => ConfirmedServiceACKChoice.Audit_log_query

            // Remote Device Management
            case 18 => ConfirmedServiceACKChoice.Confirmed_private_transfer

            // Virtual Terminal
            case 21 => ConfirmedServiceACKChoice.Vt_open
            case 23 => ConfirmedServiceACKChoice.Vt_data

            // ========== 已删除服务分支 ==========
            case 13 => ConfirmedServiceACKChoice.Read_property_conditional
            case 24 => ConfirmedServiceACKChoice.Authenticate

            // ========== 非法标签值 ==========
            case _  => throw BACnetDecodeErro(
                "协议错误.无效服务标签"
            )
        }
    }

    public static func fromUInt8(tag : UInt8): ConfirmedServiceACKChoice 
    {
        match (tag ) 
        {
            // ========== 合法服务分支 ==========
            // Alarm and Event Services
            case 3  => ConfirmedServiceACKChoice.Get_alarm_summary
            case 4  => ConfirmedServiceACKChoice.Get_enrollment_summary
            case 29 => ConfirmedServiceACKChoice.Get_event_information

            // File Access Services
            case 6  => ConfirmedServiceACKChoice.Atomic_read_file
            case 7  => ConfirmedServiceACKChoice.Atomic_write_file

            // Object Access Services
            case 10 => ConfirmedServiceACKChoice.Create_object
            case 12 => ConfirmedServiceACKChoice.Read_property
            case 14 => ConfirmedServiceACKChoice.Read_property_multiple
            case 26 => ConfirmedServiceACKChoice.Read_range
            case 33 => ConfirmedServiceACKChoice.Audit_log_query

            // Remote Device Management
            case 18 => ConfirmedServiceACKChoice.Confirmed_private_transfer

            // Virtual Terminal
            case 21 => ConfirmedServiceACKChoice.Vt_open
            case 23 => ConfirmedServiceACKChoice.Vt_data

            // ========== 已删除服务分支 ==========
            case 13 => ConfirmedServiceACKChoice.Read_property_conditional
            case 24 => ConfirmedServiceACKChoice.Authenticate

            // ========== 非法标签值 ==========
            case _  => throw BACnetDecodeErro(
                "Encountered an undefined value when decoding the BACnetConfirmedServiceACK field."
            )
        }
    }


    // ============== 反向转换函数 (枚举 → Int8) ==============
    public func 转换到UInt8(): UInt8 {
        match (this) 
        {
            // ========== 合法服务分支 ==========
            case ConfirmedServiceACKChoice.Get_alarm_summary          => 3
            case ConfirmedServiceACKChoice.Get_enrollment_summary     => 4
            case ConfirmedServiceACKChoice.Get_event_information      => 29

            case ConfirmedServiceACKChoice.Atomic_read_file           => 6
            case ConfirmedServiceACKChoice.Atomic_write_file          => 7

            case ConfirmedServiceACKChoice.Create_object              => 10
            case ConfirmedServiceACKChoice.Read_property              => 12
            case ConfirmedServiceACKChoice.Read_property_multiple     => 14
            case ConfirmedServiceACKChoice.Read_range                 => 26
            case ConfirmedServiceACKChoice.Audit_log_query            => 33

            case ConfirmedServiceACKChoice.Confirmed_private_transfer => 18

            case ConfirmedServiceACKChoice.Vt_open                    => 21
            case ConfirmedServiceACKChoice.Vt_data                   => 23

            // ========== 已删除服务分支（保留标签映射） ==========
            case ConfirmedServiceACKChoice.Authenticate               => 24
            case ConfirmedServiceACKChoice.Read_property_conditional   => 13
        }
    }

    public func toUInt8(): UInt8 {
        match (this) 
        {
            // ========== 合法服务分支 ==========
            case ConfirmedServiceACKChoice.Get_alarm_summary          => 3
            case ConfirmedServiceACKChoice.Get_enrollment_summary     => 4
            case ConfirmedServiceACKChoice.Get_event_information      => 29

            case ConfirmedServiceACKChoice.Atomic_read_file           => 6
            case ConfirmedServiceACKChoice.Atomic_write_file          => 7

            case ConfirmedServiceACKChoice.Create_object              => 10
            case ConfirmedServiceACKChoice.Read_property              => 12
            case ConfirmedServiceACKChoice.Read_property_multiple     => 14
            case ConfirmedServiceACKChoice.Read_range                 => 26
            case ConfirmedServiceACKChoice.Audit_log_query            => 33

            case ConfirmedServiceACKChoice.Confirmed_private_transfer => 18

            case ConfirmedServiceACKChoice.Vt_open                    => 21
            case ConfirmedServiceACKChoice.Vt_data                   => 23

            // ========== 已删除服务分支（保留标签映射） ==========
            case ConfirmedServiceACKChoice.Authenticate               => 24
            case ConfirmedServiceACKChoice.Read_property_conditional   => 13
        }
    }
}
