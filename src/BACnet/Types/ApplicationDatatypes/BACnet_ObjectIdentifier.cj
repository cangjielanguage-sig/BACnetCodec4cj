package BACnetCodec4cj.BACnet.Types.ApplicationDatatypes

import BACnetCodec4cj.BACnet.Choice.*
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import BACnetCodec4cj.Utility.*
import BACnetCodec4cj.BACnet.Types.*
import std.binary.*

public class BACnet_ObjectIdentifier <: BACnetApplicationDatatype & ICodecPrimitiveData<BACnetApplicationDatatype> & ICodecContextSpecificData & IHaveDataValue<BACnetObjectIdentifierStruct> {
    //使用系统自带日期时间定义，当试图使用一些非法的日期值会直接抛出异常

    private var _dataValue: BACnetObjectIdentifierStruct = BACnetObjectIdentifierStruct()
    public mut prop dataValue: BACnetObjectIdentifierStruct {
        get() {
            return _dataValue
        }
        set(arg_Value) {
            _dataValue = arg_Value
        }
    }

    public init() {
        this.tagNumber = 12
        this.tagClass = TagClass.applicationTag
        this._dataValue = BACnetObjectIdentifierStruct()
        this.tagLength = 4
        this.applicationDatatype = ApplicationDatatypes.BACnetObjectIdentifier
    }

    public init(arg_tagNumber: UInt8, arg_tagClass: TagClass, arg_dataValue: BACnetObjectIdentifierStruct) {
        this.tagNumber = arg_tagNumber
        this.tagClass = arg_tagClass
        this.tagLength = 4
        this._dataValue = arg_dataValue
        this.applicationDatatype = ApplicationDatatypes.BACnetObjectIdentifier
    }

    public static func decodingPrimitiveDataFromArrayByte(packet: ByteBuf): BACnetApplicationDatatype {
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 1) {
            throw DecodeException("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000) >> 4
        if (_tagNum == 12) {
            //是BACnetObjectIdentifier量
            var _rtu = BACnet_ObjectIdentifier()
            _rtu.applicationDatatype = ApplicationDatatypes.BACnetObjectIdentifier
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = TagClass.applicationTag
            var _len = UInt32(_appTag & 0b0000_0111)
            _rtu.tagLength = _len

            if (_len != 4) {
                throw DecodeException("解码错误:无法识别长度为${_len}的BACnet_ObjectIdentifier数据")
            }
            //读取成一个32位（4字节）整数，方便后续掩码操作
            let _dataArray = packet.read_UInt32_FromBuff()
            //高10位，即31~22位是对象类型
            let _objectType = ObjectType.fromUInt16(
                UInt16((_dataArray & 0B1111_1111_1100_0000_0000_0000_0000_0000) >> 22))
            let _objectId = UInt32(_dataArray & 0B0000_0000_0011_1111_1111_1111_1111_1111)
            _rtu.dataValue = BACnetObjectIdentifierStruct(_objectType, _objectId)

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
        this.tagClass = TagClass.contextSpecificTag

        var _len = UInt32(_appTag & 0b0000_0111)
        if (_len != 4) {
            throw DecodeException("解码错误:无法识别长度为${_len}的UnsignedInteger数据")
        }

        let _tagNum = readContextSpecificTagNumber(_appTag, packet)
        this.tagNumber = _tagNum

        this.tagLength = _len
        //读取成一个32位（4字节）整数，方便后续掩码操作
        let _dataArray = packet.read_UInt32_FromBuff()
        //高10位，即31~22位是对象类型
        let _objectType = ObjectType.fromUInt16(
            UInt16((_dataArray & 0B1111_1111_1100_0000_0000_0000_0000_0000) >> 22))
        let _objectId = UInt32(_dataArray & 0B0000_0000_0011_1111_1111_1111_1111_1111)
        this.dataValue = BACnetObjectIdentifierStruct(_objectType, _objectId)

        this.applicationDatatype = ApplicationDatatypes.BACnetObjectIdentifier

        return
    }

    public func encodingToPrimitiveData(): Array<Byte> {
        let _tagNum: UInt8 = 12 << 4
        var _applicationTag = 0b0000_0000u8
        _applicationTag = _applicationTag | _tagNum
        _applicationTag = _applicationTag | 0b0000_0000
        let _len: UInt8 = 4

        this.tagLength = UInt32(_len)
        _applicationTag = _applicationTag | _len
        var _value_Array = Array<Byte>(4, repeat: 0)

        var _value_U32Mask: UInt32 = 0;
        let _value_objectType = UInt32(this.dataValue.type_choice.toUInt16()) << 22
        _value_U32Mask = _value_U32Mask | _value_objectType
        _value_U32Mask = _value_U32Mask | this.dataValue.id
        _value_U32Mask.writeBigEndian(_value_Array)

        var _rtu: Array<Byte> = Array<Byte>(Int64(_len + 1), repeat: 0)
        _rtu[0] = _applicationTag
        _value_Array.copyTo(_rtu, Int64(4 - _len), 1, Int64(_len))
        return _rtu
    }

    public func encodingToContextSpecificData(): Array<Byte> {
        var _rtu: Array<Byte>
        this.tagLength = 4
        let _data_len = Int64(this.tagLength)
        let _taghead_buf = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,
            TagClass.contextSpecificTag)
        let _rtu_len = _taghead_buf.size + Int64(_data_len)
        _rtu = Array<Byte>(_rtu_len, repeat: 0u8)
        _taghead_buf.copyTo(_rtu, 0, 0, _taghead_buf.size)
        let _data_index = _rtu_len - _data_len

        var _value_Array = Array<Byte>(_data_len, repeat: 0)

        var _value_U32Mask: UInt32 = 0;
        let _value_objectType = UInt32(this.dataValue.type_choice.toUInt16()) << 22
        _value_U32Mask = _value_U32Mask | _value_objectType
        _value_U32Mask = _value_U32Mask | this.dataValue.id
        _value_U32Mask.writeBigEndian(_value_Array)

        let _copyIndexStart = _value_Array.size - _data_len
        _value_Array.copyTo(_rtu, _copyIndexStart, _data_index, _data_len)
        return _rtu
    }
}

public struct BACnetObjectIdentifierStruct <: Equal<BACnetObjectIdentifierStruct> & ToString {
    public var type_choice: ObjectType = ObjectType.analog_input
    public var id: UInt32 = 0

    public init() {
        type_choice = ObjectType.analog_input
        id = 0
    }

    public init(arg_type_choice: ObjectType, arg_id: UInt32) {
        type_choice = arg_type_choice
        id = arg_id
    }

    public operator func ==(rhs: BACnetObjectIdentifierStruct): Bool {
        if (rhs.type_choice.toUInt16() != this.type_choice.toUInt16()) {
            return false
        }
        if (rhs.id != this.id) {
            return false
        }
        return true
    }
    public func toString(): String {
        return "{type_choice:${type_choice.toString()},id:${id.toString()}}"
    }
}

/*
--ISO_16484_5_2022_Page_891
--21.5 Application Types

BACnetObjectIdentifier ::= [APPLICATION 12] OCTET STRING (SIZE(4)) -- see Clause 20.2.14
*/
