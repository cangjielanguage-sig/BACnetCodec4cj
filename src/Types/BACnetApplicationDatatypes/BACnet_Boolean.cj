package BACnetCodec4cj.Types.BACnetApplicationDatatypes

import BACnetCodec4cj.Choice.*
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*
import BACnetCodec4cj.ByteBuf.*

public class BACnet_Boolean <: BACnetApplicationDatatype & ICodecPrimitiveData<BACnetApplicationDatatype> & ICodecContextSpecificData & IHaveDataValue<Bool> {
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
        this.tagClass = BACnetTagClassChoice.applicationTag
        this._dataValue = false
        this.tagLength = 1
        this.applicationDatatype = BACnetApplicationDatatypesChoice.Boolean
    }

    public init(arg_tagNumber: UInt8, arg_tagClass: BACnetTagClassChoice, arg_dataValue: Bool) {
        this.tagNumber = arg_tagNumber
        this.tagClass = arg_tagClass
        this.tagLength = 1
        this._dataValue = arg_dataValue
        this.applicationDatatype = BACnetApplicationDatatypesChoice.Boolean
    }

    public static func decodingPrimitiveDataFromArrayByte(packet: ByteBuf): BACnetApplicationDatatype {
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 1) {
            throw BACnetDecodeError("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000) >> 4
        if (_tagNum == 1) {
            //是Bool量
            var _rtu = BACnet_Boolean()
            _rtu.applicationDatatype = BACnetApplicationDatatypesChoice.Boolean
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = BACnetTagClassChoice.applicationTag
            _rtu.tagLength = UInt32(_appTag & 0b0000_0111)

            if (_rtu.tagLength == 0) {
                _rtu.dataValue = false
            } else if (_rtu.tagLength == 1) {
                _rtu.dataValue = true
            } else {
                throw BACnetDecodeError("解码错误:无法识别的Bool数据")
            }
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

        this.tagLength = UInt32(_appTag & 0b0000_0111)
        //BACnet_Boolean的上下文指定值长度必须是1，不是就报错
        if (this.tagLength != 1) {
            throw BACnetDecodeError(
                "解码错误:检测到AppTag长度为${this.tagLength},BACnet的Bool量长度固定为1，这是个无法识别的Bool数据长度")
        }

        this.tagNumber = readContextSpecificTagNumber(_appTag, packet)

        let _value = packet.read_UInt8_FromBuf();
        if (_value == 0b0000_0000) {
            this.dataValue = false
        } else if (_value == 0b0000_0001) {
            this.dataValue = true
        } else {
            throw BACnetDecodeError(
                "解码错误:BACnet_Boolean的值字节只能是0或1，当前得到的值字节值是${_value},这是个无法识别的Bool数据")
        }
        this.applicationDatatype = BACnetApplicationDatatypesChoice.Boolean
        return
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
        // if(this.tagLength != 1){
        //     throw  BACnetDecodeError("解码错误:检测到AppTag长度为${this.tagLength},BACnet的Bool量长度固定为1，这是个无法识别的Bool数据长度")
        // }
        this.tagLength = 1
        var _taghead_buf = encodingToApplicationDataTagHead(this.tagNumber, this.tagLength,
            BACnetTagClassChoice.contextSpecificTag)
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
