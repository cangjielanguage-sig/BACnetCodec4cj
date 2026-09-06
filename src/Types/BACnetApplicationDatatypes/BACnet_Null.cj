package BACnetCodec4cj.Types.BACnetApplicationDatatypes

import BACnetCodec4cj.Choice.*
import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*
import BACnetCodec4cj.ByteBuf.*

//BACnet的空值
public class BACnet_Null <: BACnetApplicationDatatype & ICodecPrimitiveData<BACnetApplicationDatatype> {
    public init() {
        tagNumber = 0
        tagClass = BACnetTagClassChoice.applicationTag
        tagLength = 0
        this.applicationDatatype = BACnetApplicationDatatypesChoice.Null
    }

    public static func decodingPrimitiveDataFromArrayByte(packet: ByteBuf): BACnetApplicationDatatype {
        let _appTag = packet.read_UInt8_FromBuf();
        let _classBit = (_appTag & 0b0000_1000) >> 3
        if (_classBit == 1) {
            throw BACnetDecodeError("解码错误:使用原语类型解码函数解析上下文指定编码")
        }
        let _tagNum = (_appTag & 0b1111_0000) >> 4
        if (_tagNum == 0) {
            //是Null量
            var _rtu = BACnet_Null()
            _rtu.applicationDatatype = BACnetApplicationDatatypesChoice.Null
            _rtu.tagNumber = _tagNum
            _rtu.tagClass = BACnetTagClassChoice.applicationTag
            _rtu.tagLength = UInt32(_appTag & 0b0000_0111)

            if (_rtu.tagLength != 0) {
                throw BACnetDecodeError(
                    "解码错误:检测到AppTag长度为${_rtu.tagLength},BACnet的Null量长度固定为0，这是个无法识别的Null数据")
            }
            return _rtu
        } else {
            packet.cursorMoveBackward(1)
            let _rtu = BACnetApplicationDatatype.decodingFromArrayByte(packet)
            return _rtu
        }
    }

    public func encodingToPrimitiveData(): Array<Byte> {
        //Null的简单代码固定
        return [0b0000_0000]
    }
}

/*
--ISO_16484_5_2022_Page_891
--21.5 Application Types

-- NULL [APPLICATION 0], equivalent to [UNIVERSAL 5]
*/
