package BACnetCodec4cj.Types.BACnetApplicationDatatypes

import BACnetCodec4cj.Choice.*
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*
import BACnetCodec4cj.ByteBuf.*

public class BACnet_OctetString <: BACnetApplicationDatatype & ICodecPrimitiveData<BACnetApplicationDatatype> & ICodecContextSpecificData & IHaveDataValue<Array<Byte>> {
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
        this.tagClass = BACnetTagClassChoice.applicationTag
        this._dataValue = Array<Byte>(0, repeat: 0)
        this.applicationDatatype = BACnetApplicationDatatypesChoice.OctetString
    }

    public init(arg_tagNumber: UInt8, arg_tagClass: BACnetTagClassChoice, arg_dataValue: Array<Byte>) {
        this.tagNumber = arg_tagNumber
        this.tagClass = arg_tagClass
        this.tagLength = 0
        this._dataValue = arg_dataValue
        this.applicationDatatype = BACnetApplicationDatatypesChoice.OctetString
    }

    public static func decodingPrimitiveDataFromArrayByte(packet: ByteBuf): BACnetApplicationDatatype {
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 1) {
            throw BACnetDecodeError("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000) >> 4
        if (_tagNum == 6) {
            //是String量
            var _rtu = BACnet_OctetString()
            _rtu.applicationDatatype = BACnetApplicationDatatypesChoice.OctetString
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = BACnetTagClassChoice.applicationTag
            let _tagLen = readBACnetApplicationDataLength(_appTag, packet)
            _rtu.tagLength = _tagLen
            _rtu.dataValue = packet.read_FromBuff(Int64(_tagLen))
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
            throw BACnetDecodeError("解码错误:使用上下文指定类型解码函数解码原语类型")
        }
        this.tagClass = BACnetTagClassChoice.contextSpecificTag

        let _tagNum = readContextSpecificTagNumber(_appTag, packet)
        this.tagNumber = _tagNum

        let _tagLen = readBACnetApplicationDataLength(_appTag, packet)
        this.tagLength = _tagLen

        this.dataValue = packet.read_FromBuff(Int64(_tagLen))

        this.applicationDatatype = BACnetApplicationDatatypesChoice.OctetString

        return
    }

    public func encodingToPrimitiveData(): Array<Byte> {
        this.tagNumber = 6
        var _value_Array = this.dataValue
        this.tagLength = UInt32(_value_Array.size)
        return encodeWithTagHead(this.tagNumber, this.tagLength, BACnetTagClassChoice.applicationTag, _value_Array)
    }

    public func encodingToContextSpecificData(): Array<Byte> {
        var _value_Array = this.dataValue
        this.tagLength = UInt32(_value_Array.size)
        return encodeWithTagHead(this.tagNumber, this.tagLength, BACnetTagClassChoice.contextSpecificTag, _value_Array)
    }
}

/*
--ISO_16484_5_2022_Page_891
--21.5 Application Types

 -- OCTET STRING [APPLICATION 6], equivalent to [UNIVERSAL 4]
*/
