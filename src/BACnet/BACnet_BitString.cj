package BACnetCodec4cj.BACnet

import BACnetCodec4cj.InterFaces.{ICodecContextSpecificData,ICodecPrimitiveData,IHaveTag,IHaveDataValue,BACnet_TagClass_Enum} 
import BACnetCodec4cj.BACnetCodecException.DecodeException.DecodeException
import BACnetCodec4cj.Utility.ByteBuf.ByteBuf

public class BACnet_BitString <: ICodecContextSpecificData<BACnet_BitString> 
& ICodecPrimitiveData<BACnet_BitString>
& IHaveTag 
& IHaveDataValue<Array<Bool>> 
{
    private var _tagNumber: UInt8 = 8
    public mut prop tagNumber: UInt8 {
        get() {
            return _tagNumber
        }
        set(arg_Value) {
            _tagNumber = arg_Value
        }
    }

    private var _tagClass: BACnet_TagClass_Enum = BACnet_TagClass_Enum.application_tag
    public mut prop tagClass: BACnet_TagClass_Enum {
        get() {
            return _tagClass
        }
        set(arg_Value) {
            _tagClass = arg_Value
        }
    }

    private var _tagLength: UInt32 = 0
    public mut prop tagLength: UInt32 {
        get() {
            return _tagLength
        }
        set(arg_Value) {
            _tagLength = arg_Value
        }
    }

    private var _applicationDatatype: BACnet_ApplicationDataTypes_Enum = BACnet_ApplicationDataTypes_Enum.bit_string
    public mut prop applicationDatatype: BACnet_ApplicationDataTypes_Enum {
        get() {
            return _applicationDatatype
        }
        set(arg_Value) {
            _applicationDatatype = arg_Value
        }
    }

    private var _dataValue: Array<Bool> = Array<Bool>(0, repeat: false)
    public mut prop dataValue: Array<Bool> {
        get() {
            return _dataValue
        }
        set(arg_Value) {
            _dataValue = arg_Value
        }
    }

    public init() {
        this.tagNumber = 8
        this.tagClass = BACnet_TagClass_Enum.application_tag
        this._dataValue = Array<Bool>(0, repeat: false)
        this.applicationDatatype = BACnet_ApplicationDataTypes_Enum.bit_string
    }

    public init(arg_tagNumber: UInt8, arg_tagClass: BACnet_TagClass_Enum, arg_dataValue: Array<Bool>) {
        this.tagNumber = arg_tagNumber
        this.tagClass = arg_tagClass
        this.tagLength = 0
        this._dataValue = arg_dataValue
        this.applicationDatatype = BACnet_ApplicationDataTypes_Enum.bit_string
    }

    //将编码字节（首字节为unused-bits数量，后续为数据）解码为比特序列：bitString[0] 对应首个数据字节的最高位
    public static func decodingArrayToBitArray(arg_array: Array<Byte>): Array<Bool> {
        let _unusedBits = arg_array[0]
        let _value_Array = arg_array[1..]
        let _totalBits = _value_Array.size * 8 - Int64(_unusedBits)
        var _rtu = Array<Bool>(_totalBits, repeat: false)
        var _bitIndex: Int64 = 0
        for (bitem in _value_Array) {
            for (_i in 0..8) {
                if (_bitIndex < _totalBits) {
                    let _mask = 0b1000_0000u8 >> _i
                    _rtu[_bitIndex] = ((bitem & _mask) != 0)
                    _bitIndex += 1
                }
            }
        }
        return _rtu
    }

    //将比特序列编码为字节数组（首字节为unused-bits数量）：bitValue[0] 对应首个数据字节的最高位
    public func encodingBitArrayToBytes(arg_bits: Array<Bool>): Array<Byte> {
        var _rtu: Array<Byte>
        let _bits_Size = arg_bits.size
        var _arrSize = 0
        var _unusedBits = 0
        if (_bits_Size % 8 == 0) {
            _arrSize = _bits_Size / 8
            _unusedBits = 0
        } else {
            _arrSize = _bits_Size / 8 + 1
            _unusedBits = 8 - _bits_Size % 8
        }
        var _fullBits = Array<Bool>(_arrSize * 8, repeat: false)
        arg_bits.copyTo(_fullBits, 0, 0, _bits_Size)
        _rtu = Array<Byte>(_arrSize + 1, repeat: 0)
        _rtu[0] = UInt8(_unusedBits)
        for (_i in 0.._arrSize) {
            var _byte: Byte = 0
            for (_j in 0..8) {
                if (_fullBits[_i * 8 + _j]) {
                    _byte = _byte | (0b1000_0000u8 >> _j)
                }
            }
            _rtu[_i + 1] = _byte
        }
        return _rtu
    }

    public static func decodingPrimitiveDataFromArrayByte(packet: ByteBuf): BACnet_BitString {
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 1) {
            throw DecodeException("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000) >> 4
        if (_tagNum == 8) {
            //是BitString量
            var _rtu = BACnet_BitString()
            _rtu.applicationDatatype = BACnet_ApplicationDataTypes_Enum.bit_string
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = BACnet_TagClass_Enum.application_tag
            let _tagLen = readBACnetApplicationDataLength(_appTag, packet)
            _rtu.tagLength = _tagLen
            let _dataOct = packet.read_FromBuff(Int64(_tagLen))
            _rtu.dataValue = decodingArrayToBitArray(_dataOct)
            return _rtu
        } else {
            throw DecodeException("解码错误:数据不是BACnet_BitString类型")
        }
    }

    public func encodingToPrimitiveData(): Array<Byte> {
        this.tagNumber = 8
        var _value_Array = encodingBitArrayToBytes(this.dataValue)
        this.tagLength = UInt32(_value_Array.size)
        let _tagHead = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,
            BACnet_TagClass_Enum.application_tag)
        let _rtu_len = _tagHead.size + _value_Array.size
        var _rtu: Array<Byte> = Array<Byte>(_rtu_len, repeat: 0)
        _tagHead.copyTo(_rtu, 0, 0, _tagHead.size)
        _value_Array.copyTo(_rtu, 0, _tagHead.size, _value_Array.size)
        return _rtu
    }

    public static func decodingContextSpecificDataFromArrayByte(packet: ByteBuf,arg_tagNumber: UInt8): BACnet_BitString {

        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 0) {
            throw DecodeException("解码错误:使用上下文指定编码解码函数解析原语类型")
        }
    
        var _rtu = BACnet_BitString()
        _rtu.tagClass = BACnet_TagClass_Enum.contextSpecific_tag
        _rtu.applicationDatatype = BACnet_ApplicationDataTypes_Enum.bit_string
        
        let _tagNum = readContextSpecificTagNumber(_appTag, packet)
        if(_tagNum != arg_tagNumber){
            throw DecodeException("解码错误:上下文编号与预期不同")
        }
        _rtu.tagNumber = _tagNum
        let _tagLen = readBACnetApplicationDataLength(_appTag, packet)
        _rtu.tagLength = _tagLen
        let _dataOct = packet.read_FromBuff(Int64(_tagLen))
        _rtu.dataValue = decodingArrayToBitArray(_dataOct)
        return _rtu
    }

    public func encodingToContextSpecificData(): Array<Byte> {

        var _value_Array = encodingBitArrayToBytes(this.dataValue)
        this.tagLength = UInt32(_value_Array.size)
        let _tagHead = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,
            BACnet_TagClass_Enum.application_tag)
        let _rtu_len = _tagHead.size + _value_Array.size
        var _rtu: Array<Byte> = Array<Byte>(_rtu_len, repeat: 0)
        _tagHead.copyTo(_rtu, 0, 0, _tagHead.size)
        _value_Array.copyTo(_rtu, 0, _tagHead.size, _value_Array.size)
        return _rtu
    }

}

/*
--ISO_16484_5_2022_Page_891
--21.5 Application Types

 -- BIT STRING [APPLICATION 8], equivalent to [UNIVERSAL 3]
*/
