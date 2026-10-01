package BACnetCodec4cj.BACnet

import BACnetCodec4cj.BACnetCodecException.DecodeException.DecodeException
import BACnetCodec4cj.Utility.ByteBuf.ByteBuf
import BACnetCodec4cj.InterFaces.{ICodecContextSpecificData,ICodecPrimitiveData,IHaveTag,IHaveDataValue,BACnet_TagClass_Enum} 


//同时对应BACnetApplicationDatatype的BSTRACT-SYNTAX.&Type（即ANY）

public class BACnetApplicationDatatype <: ICodecContextSpecificData<BACnetApplicationDatatype> 
& ICodecPrimitiveData<BACnetApplicationDatatype>
& IHaveTag 
& IHaveDataValue<BACnet_ApplicationDataTypes_Choice>  
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

    private var _dataValue: BACnet_ApplicationDataTypes_Choice = BACnet_ApplicationDataTypes_Choice.null(BACnet_Null())
    public mut prop dataValue: BACnet_ApplicationDataTypes_Choice {
        get() {
            return _dataValue
        }
        set(arg_Value) {
            _dataValue = arg_Value
        }
    }

    public init() {
        this.tagNumber = 0
        this.tagClass = BACnet_TagClass_Enum.application_tag
        this.applicationDatatype = BACnet_ApplicationDataTypes_Enum.null
    }

    public static func decodingPrimitiveDataFromArrayByte(packet: ByteBuf): BACnetApplicationDatatype {
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000) >> 3

        if (_classBit == 1) {
            throw DecodeException("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum:UInt32 = UInt32((_appTag & 0b1111_0000) >> 4)
        var _appDataType = BACnet_ApplicationDataTypes_Enum.fromUInt32(_tagNum)
        packet.cursorMoveBackward(1)
        var _rtu = BACnetApplicationDatatype()
        match (_appDataType) {
            case BACnet_ApplicationDataTypes_Enum.null => _rtu.dataValue = BACnet_ApplicationDataTypes_Choice.null(BACnet_Null.decodingPrimitiveDataFromArrayByte(packet))
            case BACnet_ApplicationDataTypes_Enum.boolean => _rtu.dataValue = BACnet_ApplicationDataTypes_Choice.boolean(BACnet_Boolean.decodingPrimitiveDataFromArrayByte(packet))
            case BACnet_ApplicationDataTypes_Enum.unsigned_integer => _rtu.dataValue = BACnet_ApplicationDataTypes_Choice.unsigned_integer(BACnet_UnsignedInteger.decodingPrimitiveDataFromArrayByte(packet))
            case BACnet_ApplicationDataTypes_Enum.signed_integer => _rtu.dataValue = BACnet_ApplicationDataTypes_Choice.signed_integer(BACnet_SignedInteger.decodingPrimitiveDataFromArrayByte(packet))
            case BACnet_ApplicationDataTypes_Enum.real => _rtu.dataValue = BACnet_ApplicationDataTypes_Choice.real(BACnet_Real.decodingPrimitiveDataFromArrayByte(packet))
            case BACnet_ApplicationDataTypes_Enum.double => _rtu.dataValue = BACnet_ApplicationDataTypes_Choice.double(BACnet_Double.decodingPrimitiveDataFromArrayByte(packet))
            case BACnet_ApplicationDataTypes_Enum.octet_string => _rtu.dataValue = BACnet_ApplicationDataTypes_Choice.octet_string(BACnet_OctetString.decodingPrimitiveDataFromArrayByte(packet))
            case BACnet_ApplicationDataTypes_Enum.character_string => _rtu.dataValue = BACnet_ApplicationDataTypes_Choice.character_string(BACnet_CharacterString.decodingPrimitiveDataFromArrayByte(packet))
            case BACnet_ApplicationDataTypes_Enum.bit_string => _rtu.dataValue = BACnet_ApplicationDataTypes_Choice.bit_string(BACnet_BitString.decodingPrimitiveDataFromArrayByte(packet))
            case BACnet_ApplicationDataTypes_Enum.enumerated => _rtu.dataValue = BACnet_ApplicationDataTypes_Choice.enumerated(BACnet_Enumerated.decodingPrimitiveDataFromArrayByte(packet))
            case BACnet_ApplicationDataTypes_Enum.date => _rtu.dataValue = BACnet_ApplicationDataTypes_Choice.date(BACnet_Date.decodingPrimitiveDataFromArrayByte(packet))
            case BACnet_ApplicationDataTypes_Enum.time => _rtu.dataValue = BACnet_ApplicationDataTypes_Choice.time(BACnet_Time.decodingPrimitiveDataFromArrayByte(packet))
            case BACnet_ApplicationDataTypes_Enum.bacnet_object_identifier => _rtu.dataValue = BACnet_ApplicationDataTypes_Choice.bacnet_object_identifier(BACnet_ObjectIdentifier.decodingPrimitiveDataFromArrayByte(packet))

        }
        return _rtu        
    }

  
    public func encodingToPrimitiveData() : Array<Byte>{
            var _rtu: Array<Byte> = [];
            _rtu = match(this.dataValue){
                case BACnet_ApplicationDataTypes_Choice.null(arg_Null) => arg_Null.encodingToPrimitiveData()
                case BACnet_ApplicationDataTypes_Choice.boolean(arg_Boolean) => arg_Boolean.encodingToPrimitiveData()
                case BACnet_ApplicationDataTypes_Choice.unsigned_integer(arg_UnsignedInteger) => arg_UnsignedInteger.encodingToPrimitiveData()
                case BACnet_ApplicationDataTypes_Choice.signed_integer(arg_SignedInteger) => arg_SignedInteger.encodingToPrimitiveData()
                case BACnet_ApplicationDataTypes_Choice.real(arg_Real) => arg_Real.encodingToPrimitiveData()
                case BACnet_ApplicationDataTypes_Choice.double(arg_Double) => arg_Double.encodingToPrimitiveData()
                case BACnet_ApplicationDataTypes_Choice.octet_string(arg_OctetString) => arg_OctetString.encodingToPrimitiveData()
                case BACnet_ApplicationDataTypes_Choice.character_string(arg_CharacterString) => arg_CharacterString.encodingToPrimitiveData()
                case BACnet_ApplicationDataTypes_Choice.bit_string(arg_BitString) => arg_BitString.encodingToPrimitiveData()
                case BACnet_ApplicationDataTypes_Choice.enumerated(arg_Enumerated) => arg_Enumerated.encodingToPrimitiveData()
                case BACnet_ApplicationDataTypes_Choice.date(arg_Date) => arg_Date.encodingToPrimitiveData()
                case BACnet_ApplicationDataTypes_Choice.time(arg_Time) => arg_Time.encodingToPrimitiveData()
                case BACnet_ApplicationDataTypes_Choice.bacnet_object_identifier(arg_ObjectIdentifier) => arg_ObjectIdentifier.encodingToPrimitiveData()
            }
            return _rtu
    }


    public static func decodingContextSpecificDataFromArrayByte(packet: ByteBuf,arg_tagNumber: UInt8): BACnetApplicationDatatype {
        let _appTag = packet.read_UInt8_FromBuf();

        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 0) {
            throw DecodeException("解码错误:使用上下文指定类型解码函数解码原语类型")
        }
        var _rtu = BACnetApplicationDatatype()
        _rtu.tagClass = BACnet_TagClass_Enum.contextSpecific_tag

        _rtu = decoding_Open_Close_Tag_Data<BACnetApplicationDatatype>(packet,arg_tagNumber)

        return _rtu
    }


    public func encodingToContextSpecificData(): Array<Byte> {
        return encoding_Open_Close_Tag_Data<BACnetApplicationDatatype>(this)
    }

}
