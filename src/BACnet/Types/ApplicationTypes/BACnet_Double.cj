package BACnetCodec4cj.BACnet.Types.ApplicationTypes

import BACnetCodec4cj.BACnet.Choice.*
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import BACnetCodec4cj.Utility.*
import std.binary.*

public class BACnet_Double <: BACnetApplicationDatatype & ICodecPrimitiveData<BACnetApplicationDatatype> & ICodecContextSpecificData & IHaveDataValue<Float64> {
    private var _dataValue: Float64 = 0.0
    public mut prop dataValue: Float64 {
        get() {
            return _dataValue
        }
        set(arg_Value) {
            _dataValue = arg_Value
        }
    }

    public init() {
        this.tagNumber = 5
        this.tagClass = TagClass_Choice.applicationTag
        this._dataValue = 0.0
        this.tagLength = 8
        this.applicationDatatype = ApplicationTags.Double
    }

    public init(arg_tagNumber: UInt8, arg_tagClass: TagClass_Choice, arg_dataValue: Float64) {
        this.tagNumber = arg_tagNumber
        this.tagClass = arg_tagClass
        this.tagLength = 8
        this._dataValue = arg_dataValue
        this.applicationDatatype = ApplicationTags.Double
    }

    public static func decodingPrimitiveDataFromArrayByte(packet: ByteBuf): BACnetApplicationDatatype {
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 1) {
            throw DecodeException("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000) >> 4
        if (_tagNum == 5) {
            //是Double量
            var _rtu = BACnet_Double()
            _rtu.applicationDatatype = ApplicationTags.Double
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = TagClass_Choice.applicationTag
            var _len = _appTag & 0b0000_0111
            if (_len != 0b0000_0101) {
                throw DecodeException("解码错误:BACnet_Double数据的Tag_length域必须是0b0000_0101")
            }
            let _tagLen = UInt32(packet.read_UInt8_FromBuf());
            _rtu.tagLength = _tagLen

            if (_rtu.tagLength != 8) {
                throw DecodeException("解码错误:无法识别长度为${_rtu.tagLength}的BACnet_Double数据")
            }
            _rtu.dataValue = packet.read_Float64_FromBuff()
            return _rtu
        } else {
            packet.cursorMoveBackward(1)
            let _rtu = BACnetApplicationDatatype.decodingFromArrayByte(packet)
            return _rtu
        }
    }

    public func decodingContextSpecificDataFromArrayByte(packet: ByteBuf): Unit {
        let _appTag = packet.read_UInt8_FromBuf();

        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 0) {
            throw DecodeException("解码错误:使用上下文指定类型解码函数解码原语类型")
        }
        this.tagClass = TagClass_Choice.contextSpecificTag

        var _len = _appTag & 0b0000_0111
        if (_len != 0b0000_0101) {
            throw DecodeException("解码错误:BACnet_Double数据的Tag_length域必须是0b0000_0101")
        }

        let _tagNum = readContextSpecificTagNumber(_appTag, packet)
        this.tagNumber = _tagNum

        let _tagLen = UInt32(packet.read_UInt8_FromBuf());
        this.tagLength = _tagLen

        if (this.tagLength != 8) {
            throw DecodeException("解码错误:无法识别长度为${this.tagLength}的BACnet_Double数据")
        }
        this.dataValue = packet.read_Float64_FromBuff()

        this.applicationDatatype = ApplicationTags.Double

        return
    }

    public func encodingToPrimitiveData(): Array<Byte> {
        let _tagNum: UInt8 = 5 << 4
        var _applicationTag = 0b0000_0000u8
        _applicationTag = _applicationTag | _tagNum
        _applicationTag = _applicationTag | 0b0000_0000
        let _len: UInt8 = 8

        this.tagLength = UInt32(_len)
        var _value_Array = Array<Byte>(8, repeat: 0)
        this.dataValue.writeBigEndian(_value_Array)
        //因为长度固定为8，在5~253范围内，所以tagLength域
        //固定为0b0101,并在随后的一个字节里标实际长度
        _applicationTag = _applicationTag | 0b0000_0101
        var _rtu: Array<Byte> = Array<Byte>(Int64(_len + 2), repeat: 0)
        _rtu[0] = _applicationTag
        _rtu[1] = _len
        _value_Array.copyTo(_rtu, Int64(8 - _len), 2, Int64(_len))
        return _rtu
    }

    public func encodingToContextSpecificData(): Array<Byte> {
        var _rtu: Array<Byte>
        // if(this.tagLength != 8){
        //     throw  DecodeException("解码错误:检测到AppTag长度为${this.tagLength},BACnet的Double量长度固定为8,${this.tagLength}是个无法识别的Bool数据长度")
        // }
        this.tagLength = 8
        var _taghead_buf = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,
            TagClass_Choice.contextSpecificTag)
        let _rtu_len = _taghead_buf.size + 8
        _rtu = Array<Byte>(_rtu_len, repeat: 0u8)
        _taghead_buf.copyTo(_rtu, 0, 0, _taghead_buf.size)
        let _data_index = _rtu_len - 8
        var _value_Array = Array<Byte>(8, repeat: 0)
        this.dataValue.writeBigEndian(_value_Array)
        _value_Array.copyTo(_rtu, 0, _data_index, 8)
        return _rtu
    }
}

/*
--ISO_16484_5_2022_Page_891
--21.5 Application Types

Double ::=  [APPLICATION 5] OCTET STRING (SIZE(8)) -- ANSI/IEEE-754 double precision floating point
*/
