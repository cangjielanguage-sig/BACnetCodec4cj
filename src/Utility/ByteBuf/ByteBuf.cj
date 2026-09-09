package BACnetCodec4cj.Utility.ByteBuf

import std.binary.*
import BACnetCodec4cj.BACnetCodecException.*

public class ByteBuf {
    private var dataBuf: Array<Byte>
    private var _cursor: Int64 = 0
    public mut prop cursor: Int64 {
        get() {
            return _cursor
        }
        set(arg_index) {
            if (arg_index >= 0 && arg_index < dataBuf.size) {
                _cursor = arg_index
            } else if (arg_index < 0) {
                //参数小于0则设为0
                _cursor = 0
            } else if (arg_index >= dataBuf.size) {
                //参数过大则设为最后一个地址
                _cursor = dataBuf.size
            }
        }
    }

    public init() {
        _cursor = 0
        dataBuf = Array<Byte>(0, repeat: 0)
    }

    public init(arg_length: Int64) {
        _cursor = 0
        dataBuf = Array<Byte>(arg_length, repeat: 0)
    }

    public init(arg_data: Array<Byte>) {
        var arg_length = arg_data.size
        dataBuf = Array<Byte>(arg_length, repeat: 0)
        arg_data.copyTo(dataBuf, 0, 0, arg_length)
        _cursor = 0
    }

    public init(arg_data: Array<Byte>, arg_length: Int64) {
        dataBuf = Array<Byte>(arg_length, repeat: 0)
        arg_data.copyTo(dataBuf, 0, 0, arg_length)
        _cursor = 0
    }

    //重新调整缓存大小
    //若新长度小于原长度，会导致数据丢弃
    //重新调整游标归零
    public func resizeBuf(arg_length: Int64) {
        var _newBuf = Array<Byte>(arg_length, repeat: 0)
        dataBuf.copyTo(_newBuf, 0, 0, arg_length)
        dataBuf = _newBuf
    }

    //重置游标归零
    public func resetBufCursor() {
        _cursor = 0
    }

    public func cursorMoveBackward(arg_step: Int64) {
        var _newIndex = _cursor - arg_step
        if (_newIndex < 0) {
            _cursor = 0
        } else {
            _cursor = _newIndex
        }
    }

    public func read_UInt8_FromBuf(): UInt8 {
        if (_cursor >= dataBuf.size) {
            throw ByteBufException("缓存已读取完")
        }
        let _rtu = UInt8.readBigEndian(dataBuf[cursor])
        cursor += 1
        return _rtu
    }

    public func read_Int8_FromBuf(): Int8 {
        if (_cursor >= dataBuf.size) {
            throw ByteBufException("缓存已读取完")
        }
        let _rtu = Int8.readBigEndian(dataBuf[cursor])
        cursor += 1
        return _rtu
    }

    public func read_UInt16_FromBuff(): UInt16 {
        let _end: Int64 = _cursor + 2
        if (_end > dataBuf.size) {
            //已读完
            throw ByteBufException("剩余未读缓存不足2字节")
        }
        let _rtu = UInt16.readBigEndian(dataBuf[_cursor.._end])
        cursor = _end
        return _rtu
    }

    public func read_Int16_FromBuff(): Int16 {
        let _end: Int64 = _cursor + 2
        if (_end > dataBuf.size) {
            //已读完
            throw ByteBufException("剩余未读缓存不足2字节")
        }
        let _rtu = Int16.readBigEndian(dataBuf[_cursor.._end])
        cursor = _end
        return _rtu
    }

    public func read_UInt32_FromBuff(): UInt32 {
        let _end: Int64 = _cursor + 4
        if (_end > dataBuf.size) {
            //已读完
            throw ByteBufException("剩余未读缓存不足4字节")
        }
        let _rtu = UInt32.readBigEndian(dataBuf[_cursor.._end])
        cursor = _end
        return _rtu
    }

    public func read_UInt32_WithLength_FromBuff(arg_length: Int64): UInt32 {
        if (arg_length > 4 || arg_length < 1) {
            throw ByteBufException("超出UInt32长度正常范围")
        }
        let _valueByte = read_FromBuff(arg_length)
        let _UInt32Byte: Array<Byte> = Array<Byte>(4, repeat: 0)
        _valueByte.copyTo(_UInt32Byte, 0, 4 - arg_length, arg_length)
        let _rtu = UInt32.readBigEndian(_UInt32Byte)
        return _rtu
    }

    public func read_UInt64_WithLength_FromBuff(arg_length: Int64): UInt64 {
        if (arg_length > 8 || arg_length < 1) {
            throw ByteBufException("超出UInt64长度正常范围")
        }
        let _valueByte = read_FromBuff(arg_length)
        let _UInt64Byte: Array<Byte> = Array<Byte>(8, repeat: 0)
        _valueByte.copyTo(_UInt64Byte, 0, 8 - arg_length, arg_length)
        let _rtu = UInt64.readBigEndian(_UInt64Byte)
        return _rtu
    }

    public func read_Int32_FromBuff(): Int32 {
        let _end: Int64 = _cursor + 4
        if (_end > dataBuf.size) {
            //已读完
            throw ByteBufException("剩余未读缓存不足4字节")
        }
        let _rtu = Int32.readBigEndian(dataBuf[_cursor.._end])
        cursor = _end
        return _rtu
    }

    public func read_Int32_WithLength_FromBuff(arg_length: Int64): Int32 {
        if (arg_length > 4 || arg_length < 1) {
            throw ByteBufException("超出UInt32长度正常范围")
        }
        let _valueByte = read_FromBuff(arg_length)
        let _valueBitMask: UInt8 = _valueByte[0] >> 7
        var _Int32Byte: Array<Byte>
        if (_valueBitMask == 0) {
            _Int32Byte = Array<Byte>(4, repeat: 0X00u8)
        } else {
            _Int32Byte = Array<Byte>(4, repeat: 0XFFu8)
        }
        _valueByte.copyTo(_Int32Byte, 0, 4 - arg_length, arg_length)
        let _rtu = Int32.readBigEndian(_Int32Byte)
        return _rtu
    }

    public func read_Int64_WithLength_FromBuff(arg_length: Int64): Int64 {
        if (arg_length > 8 || arg_length < 1) {
            throw ByteBufException("超出UInt32长度正常范围")
        }
        let _valueByte = read_FromBuff(arg_length)
        let _valueBitMask: UInt8 = _valueByte[0] >> 7
        var _Int64Byte: Array<Byte>
        if (_valueBitMask == 0) {
            _Int64Byte = Array<Byte>(8, repeat: 0X00u8)
        } else {
            _Int64Byte = Array<Byte>(8, repeat: 0XFFu8)
        }
        _valueByte.copyTo(_Int64Byte, 0, 8 - arg_length, arg_length)
        let _rtu = Int64.readBigEndian(_Int64Byte)
        return _rtu
    }

    public func read_UInt64_FromBuff(): UInt64 {
        let _end: Int64 = _cursor + 8
        if (_end > dataBuf.size) {
            //已读完
            throw ByteBufException("剩余未读缓存不足8字节")
        }
        let _rtu = UInt64.readBigEndian(dataBuf[_cursor.._end])
        cursor = _end
        return _rtu
    }

    public func read_Int64_FromBuff(): Int64 {
        let _end: Int64 = _cursor + 8
        if (_end > dataBuf.size) {
            //已读完
            throw ByteBufException("剩余未读缓存不足8字节")
        }
        let _rtu = Int64.readBigEndian(dataBuf[_cursor.._end])
        cursor = _end
        return _rtu
    }

    public func read_Float16_FromBuff(): Float16 {
        let _end: Int64 = _cursor + 2
        if (_end > dataBuf.size) {
            //已读完
            throw ByteBufException("剩余未读缓存不足2字节")
        }
        let _rtu = Float16.readBigEndian(dataBuf[_cursor.._end])
        cursor = _end
        return _rtu
    }

    public func read_Float32_FromBuff(): Float32 {
        let _end: Int64 = _cursor + 4
        if (_end > dataBuf.size) {
            //已读完
            throw ByteBufException("剩余未读缓存不足4字节")
        }
        let _rtu = Float32.readBigEndian(dataBuf[_cursor.._end])
        cursor = _end
        return _rtu
    }

    public func read_Float64_FromBuff(): Float64 {
        let _end: Int64 = _cursor + 8
        if (_end > dataBuf.size) {
            //已读完
            throw ByteBufException("剩余未读缓存不足8字节")
        }
        let _rtu = Float64.readBigEndian(dataBuf[_cursor.._end])
        cursor = _end
        return _rtu
    }

    public func read_Utf8_String_FromBuff(arg_length: Int64): String {
        let _end: Int64 = cursor + arg_length
        if (_end > dataBuf.size) {
            //已读完
            throw ByteBufException("剩余未读缓存不足${arg_length}字节")
        }
        let _rtu = String.fromUtf8(dataBuf[cursor.._end])
        cursor = _end
        return _rtu
    }

    public func read_FromBuff(arg_length: Int64): Array<Byte> {
        var _rtu: Array<Byte> = Array<Byte>(arg_length, repeat: 0)
        let _end: Int64 = cursor + arg_length
        if (_end > dataBuf.size) {
            //已读完
            throw ByteBufException("剩余未读缓存不足${arg_length}字节")
        }
        dataBuf.copyTo(_rtu, cursor, 0, arg_length)
        cursor = _end
        return _rtu
    }
}
