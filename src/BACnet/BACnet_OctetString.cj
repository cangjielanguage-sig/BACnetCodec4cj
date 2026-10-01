package BACnetCodec4cj.BACnet

import BACnetCodec4cj.InterFaces.{ICodecContextSpecificData,ICodecPrimitiveData,IHaveTag,IHaveDataValue,BACnet_TagClass_Enum} 
import BACnetCodec4cj.BACnetCodecException.DecodeException.DecodeException
import BACnetCodec4cj.Utility.ByteBuf.ByteBuf

public class BACnet_OctetString <: ICodecPrimitiveData<BACnet_OctetString> 
& ICodecContextSpecificData<BACnet_OctetString>
& IHaveTag 
& IHaveDataValue<Array<Byte>> 
{
    private var _tagNumber: UInt8 = 6
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

    private var _applicationDatatype: BACnet_ApplicationDataTypes_Enum = BACnet_ApplicationDataTypes_Enum.octet_string
    public mut prop applicationDatatype: BACnet_ApplicationDataTypes_Enum {
        get() {
            return _applicationDatatype
        }
        set(arg_Value) {
            _applicationDatatype = arg_Value
        }
    }

    private var _dataValue: Array<Byte> = Array<Byte>(0, repeat: 0)
    public mut prop dataValue: Array<Byte> {
        get() {
            return _dataValue
        }
        set(arg_Value) {
            _dataValue = arg_Value
        }
    }

    public init() {
        this.tagNumber = 6
        this.tagClass = BACnet_TagClass_Enum.application_tag
        this._dataValue = Array<Byte>(0, repeat: 0)
        this.applicationDatatype = BACnet_ApplicationDataTypes_Enum.octet_string
    }

    public init(arg_tagNumber: UInt8, arg_tagClass: BACnet_TagClass_Enum, arg_dataValue: Array<Byte>) {
        this.tagNumber = arg_tagNumber
        this.tagClass = arg_tagClass
        this.tagLength = 0
        this._dataValue = arg_dataValue
        this.applicationDatatype = BACnet_ApplicationDataTypes_Enum.octet_string
    }

    public static func decodingPrimitiveDataFromArrayByte(packet: ByteBuf): BACnet_OctetString {
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 1) {
            throw DecodeException("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000) >> 4
        if (_tagNum == 6) {
            //是String量
            var _rtu = BACnet_OctetString()
            _rtu.applicationDatatype = BACnet_ApplicationDataTypes_Enum.octet_string
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = BACnet_TagClass_Enum.application_tag
            let _tagLen = readBACnetApplicationDataLength(_appTag, packet)
            _rtu.tagLength = _tagLen
            _rtu.dataValue = packet.read_FromBuff(Int64(_tagLen))
            return _rtu
        } else {
            throw DecodeException("解码错误:无法识别的BACnet_OctetString数据")
        }
    }

    public static func decodingContextSpecificDataFromArrayByte(packet: ByteBuf,arg_tagNumber: UInt8): BACnet_OctetString {
        let _appTag = packet.read_UInt8_FromBuf();

        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 0) {
            throw DecodeException("解码错误:使用上下文指定类型解码函数解码原语类型")
        }
        var _rtu = BACnet_OctetString()

        _rtu.tagClass = BACnet_TagClass_Enum.contextSpecific_tag

        let _tagNum = readContextSpecificTagNumber(_appTag, packet)
        _rtu.tagNumber = _tagNum
        if(_tagNum != arg_tagNumber){
            throw DecodeException("解码错误:上下文编号与预期不同")
        }

        let _tagLen = readBACnetApplicationDataLength(_appTag, packet)
        _rtu.tagLength = _tagLen

        _rtu.dataValue = packet.read_FromBuff(Int64(_tagLen))

        _rtu.applicationDatatype = BACnet_ApplicationDataTypes_Enum.octet_string

        return _rtu
    }

    public func encodingToPrimitiveData(): Array<Byte> {
        this.tagNumber = 6
        var _value_Array = this.dataValue
        this.tagLength = UInt32(_value_Array.size)
        return encodeWithTagHead(this.tagNumber, this.tagLength, BACnet_TagClass_Enum.application_tag, _value_Array)
    }

    public func encodingToContextSpecificData(): Array<Byte> {
        var _value_Array = this.dataValue
        this.tagLength = UInt32(_value_Array.size)
        return encodeWithTagHead(this.tagNumber, this.tagLength, BACnet_TagClass_Enum.contextSpecific_tag, _value_Array)
    }
}

/*
--ISO_16484_5_2022_Page_891
--21.5 Application Types

 -- OCTET STRING [APPLICATION 6], equivalent to [UNIVERSAL 4]
*/
