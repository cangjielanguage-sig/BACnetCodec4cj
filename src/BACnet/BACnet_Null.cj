package BACnetCodec4cj.BACnet

import BACnetCodec4cj.InterFaces.{ICodecContextSpecificData,ICodecPrimitiveData,IHaveTag,BACnet_TagClass_Enum} 
import BACnetCodec4cj.BACnetCodecException.DecodeException.DecodeException
import BACnetCodec4cj.Utility.ByteBuf.ByteBuf

//BACnet的空值
public class BACnet_Null <: ICodecContextSpecificData<BACnet_Null> 
& ICodecPrimitiveData<BACnet_Null>
& IHaveTag 
{
    private var _tagNumber: UInt8 = 0
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

    private var _applicationDatatype: BACnet_ApplicationDataTypes_Enum = BACnet_ApplicationDataTypes_Enum.null
    public mut prop applicationDatatype: BACnet_ApplicationDataTypes_Enum {
        get() {
            return _applicationDatatype
        }
        set(arg_Value) {
            this._applicationDatatype = arg_Value
        }
    }

    public init() {
        //默认是原始类型的NULL
        this.tagNumber = 0
        this.tagClass = BACnet_TagClass_Enum.application_tag
        this.tagLength = 0
        this.applicationDatatype = BACnet_ApplicationDataTypes_Enum.null
    }

    public init(arg_tagNumber: UInt8) {
        //上下文指定的Null
        this.tagNumber = arg_tagNumber
        this.tagClass = BACnet_TagClass_Enum.contextSpecific_tag
        this.tagLength = 0
        this.applicationDatatype = BACnet_ApplicationDataTypes_Enum.null
    }

    public static func decodingPrimitiveDataFromArrayByte(packet: ByteBuf): BACnet_Null {
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 1) {
            throw DecodeException("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        var _rtu = BACnet_Null()
        let _tagNum= (_appTag & 0b1111_0000) >> 4
        if (_tagNum == 0) {
            //是Null量
            _rtu.applicationDatatype = BACnet_ApplicationDataTypes_Enum.null
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = BACnet_TagClass_Enum.application_tag
            _rtu.tagLength = UInt32(_appTag & 0b0000_0111)

            if (_rtu.tagLength != 0) {
                throw DecodeException("解码错误:检测到AppTag长度为${_rtu.tagLength},BACnet的Null量长度固定为0，这是个无法识别的Null数据")
            }
            return _rtu
        } else {
            throw DecodeException("解码错误:这不是Null数据")
        }
    }

    public func encodingToPrimitiveData(): Array<Byte> {
        //Null的简单代码固定
        return [0b0000_0000]
    }

    public static func decodingContextSpecificDataFromArrayByte(packet: ByteBuf,arg_tagNumber: UInt8): BACnet_Null {
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 0) {
            throw DecodeException("解码错误:使用上下文指定编码解码函数解析原语类型编码")
        }
        var _rtu = BACnet_Null()
        _rtu.applicationDatatype = BACnet_ApplicationDataTypes_Enum.null
        _rtu.tagClass = BACnet_TagClass_Enum.contextSpecific_tag
        var _len = UInt32(_appTag & 0b0000_0111)
        if (_len != 0) {
            throw DecodeException("解码错误:检测到AppTag长度为${_len},BACnet的Null量长度固定为0,这是个无法识别的Null数据")
        }
        let _tagNum = readContextSpecificTagNumber(_appTag, packet)
        if(_tagNum != arg_tagNumber){
            throw DecodeException("解码错误:数据不是BACnet_BitString类型")
        }
        _rtu.tagNumber = _tagNum
        _rtu.tagLength = _len
        return _rtu
    }

    public func encodingToContextSpecificData(): Array<Byte> {
        var _rtu: Array<Byte>
        this.tagLength = 0
        let _taghead_buf = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,
            BACnet_TagClass_Enum.contextSpecific_tag)
        let _rtu_len = _taghead_buf.size
        _rtu = Array<Byte>(_rtu_len, repeat: 0u8)
        _taghead_buf.copyTo(_rtu, 0, 0, _taghead_buf.size)
        return _rtu
    }

}

/*
--ISO_16484_5_2022_Page_891
--21.5 Application Types

-- NULL [APPLICATION 0], equivalent to [UNIVERSAL 5]
*/
