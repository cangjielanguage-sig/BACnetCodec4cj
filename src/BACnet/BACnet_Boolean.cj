package BACnetCodec4cj.BACnet

import BACnetCodec4cj.InterFaces.{ICodecContextSpecificData,ICodecPrimitiveData,IHaveTag,IHaveDataValue,BACnet_TagClass_Enum}
import BACnetCodec4cj.BACnetCodecException.DecodeException.DecodeException
import BACnetCodec4cj.Utility.ByteBuf.ByteBuf

public class BACnet_Boolean <: ICodecPrimitiveData<BACnet_Boolean> 
& ICodecContextSpecificData<BACnet_Boolean>
& IHaveTag 
& IHaveDataValue<Bool> 
{
    private var _tagNumber: UInt8 = 1
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

    private var _tagLength: UInt32 = 1
    public mut prop tagLength: UInt32 {
        get() {
            return _tagLength
        }
        set(arg_Value) {
            _tagLength = arg_Value
        }
    }

    private var _applicationDatatype: BACnet_ApplicationDataTypes_Enum = BACnet_ApplicationDataTypes_Enum.boolean
    public mut prop applicationDatatype: BACnet_ApplicationDataTypes_Enum {
        get() {
            return _applicationDatatype
        }
        set(arg_Value) {
            _applicationDatatype = arg_Value
        }
    }

    private var _dataValue: Bool = false
    public mut prop dataValue: Bool {
        get() {
            return _dataValue
        }
        set(arg_Value) {
            _dataValue = arg_Value
        }
    }

    public init() {
        this.tagNumber = 1
        this.tagClass = BACnet_TagClass_Enum.application_tag
        this._dataValue = false
        this.tagLength = 1
        this.applicationDatatype = BACnet_ApplicationDataTypes_Enum.boolean
    }

    public init(arg_tagNumber: UInt8, arg_tagClass: BACnet_TagClass_Enum, arg_dataValue: Bool) {
        this.tagNumber = arg_tagNumber
        this.tagClass = arg_tagClass
        this.tagLength = 1
        this._dataValue = arg_dataValue
        this.applicationDatatype = BACnet_ApplicationDataTypes_Enum.boolean
    }

    public static func decodingPrimitiveDataFromArrayByte(packet: ByteBuf): BACnet_Boolean {
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 1) {
            throw DecodeException("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000) >> 4
        if (_tagNum == 1) {
            //是Bool量
            var _rtu = BACnet_Boolean()
            _rtu.applicationDatatype = BACnet_ApplicationDataTypes_Enum.boolean
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = BACnet_TagClass_Enum.application_tag
            _rtu.tagLength = UInt32(_appTag & 0b0000_0111)

            if (_rtu.tagLength == 0) {
                _rtu.dataValue = false
            } else if (_rtu.tagLength == 1) {
                _rtu.dataValue = true
            } else {
                throw DecodeException("解码错误:无法识别的Bool数据")
            }
            return _rtu
        } else {
            throw DecodeException("解码错误:无法识别的Bool数据")
        }
    }

    public static func decodingContextSpecificDataFromArrayByte(packet: ByteBuf, arg_tagNumber: UInt8): BACnet_Boolean {
        let _appTag = packet.read_UInt8_FromBuf();

        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 0) {
            throw DecodeException("解码错误:使用上下文指定类型解码函数解码原语类型")
        }
        var _rtu = BACnet_Boolean()
        _rtu.tagClass = BACnet_TagClass_Enum.contextSpecific_tag

        _rtu.tagLength = UInt32(_appTag & 0b0000_0111)
        //BACnet_Boolean的上下文指定值长度必须是1，不是就报错
        if (_rtu.tagLength != 1) {
            throw DecodeException(
                "解码错误:检测到AppTag长度为${_rtu.tagLength},BACnet的Bool量长度固定为1，这是个无法识别的Bool数据长度")
        }

        var _tagNum = readContextSpecificTagNumber(_appTag, packet)
        if(_tagNum != arg_tagNumber){
            throw DecodeException("解码错误:上下文编号与预期不同")
        }
        _rtu.tagNumber = _tagNum

        let _value = packet.read_UInt8_FromBuf();
        if (_value == 0b0000_0000) {
            _rtu.dataValue = false
        } else if (_value == 0b0000_0001) {
            _rtu.dataValue = true
        } else {
            throw DecodeException(
                "解码错误:BACnet_Boolean的值字节只能是0或1，当前得到的值字节值是${_value},这是个无法识别的Bool数据")
        }
        _rtu.applicationDatatype = BACnet_ApplicationDataTypes_Enum.boolean
        return _rtu
    }

    public func encodingToPrimitiveData(): Array<Byte> {
        var _rtu: Array<Byte> = [0b0001_0000]
        if (this.dataValue == true) {
            _rtu[0] = 0b0001_0001
        }
        return _rtu
    }

    public func encodingToContextSpecificData(): Array<Byte> {
        var _rtu: Array<Byte>
        this.tagLength = 1
        var _taghead_buf = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,
            BACnet_TagClass_Enum.contextSpecific_tag)
        let _rtu_len = _taghead_buf.size + 1
        _rtu = Array<Byte>(_rtu_len, repeat: 0u8)
        _taghead_buf.copyTo(_rtu, 0, 0, _taghead_buf.size)
        let _data_index = _rtu_len - 1
        if (this.dataValue == true) {
            _rtu[_data_index] = 0b0000_0001
        } else {
            _rtu[_data_index] = 0b0000_0000
        }
        return _rtu
    }
}

/*
--ISO_16484_5_2022_Page_891
--21.5 Application Types

-- BOOLEAN [APPLICATION 1], equivalent to [UNIVERSAL 1]
*/
