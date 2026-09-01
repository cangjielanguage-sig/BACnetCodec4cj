package BACnetCodec4cj.Types.BACnetApplicationDatatypes
import std.unittest
import BACnetCodec4cj.ByteBuf.*
import BACnetCodec4cj.BACnetException.*
import BACnetCodec4cj.InterFaces.*
import std.time.*
import BACnetCodec4cj.Types.*

func test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings
<T,V>
(arg_Target:T,arg_CheckArr:Array<Byte>)
:Unit 
where T<:ICodecPrimitiveData<BACnetApplicationDatatype>
&IHaveDataValue<V>
{
    var _decode_value_as:Option<T>
    var _decode_value_as_value:T
    var _arr_test_1:Array<Byte>
    let _check_len:Int64
    var _packet_test:ByteBuf
    var _decode_value:BACnetApplicationDatatype

    _arr_test_1 = arg_Target.encodingToPrimitiveData()
    @Expect(_arr_test_1,arg_CheckArr)
    _check_len = _arr_test_1.size
    _packet_test = ByteBuf(_arr_test_1)
    _decode_value = T.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is T,true)
    _decode_value_as = _decode_value as T
    _decode_value_as_value = _decode_value_as.getOrThrow()
    let _v_isEqual = _decode_value_as_value.isDataEqual(arg_Target)
    @Expect(_v_isEqual,true)
    @Expect(_packet_test.cursor,_check_len)    
}

func test_BACnetApplicationDatatypes_ToPrimitiveData_Erros
<T>
(arg_Target:T,arg_CheckArr:Array<Byte>)
:Unit 
where T<:ICodecPrimitiveData<BACnetApplicationDatatype>
{
    var _packet_test:ByteBuf = ByteBuf(arg_CheckArr)
    @ExpectThrows[BACnetDecodeError](T.decodingPrimitiveDataFromArrayByte(_packet_test))
}


func test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings
<T,V>
(arg_Target:T,arg_CheckArr:Array<Byte>,arg_Decode:T)
:Unit 
where T<:ICodecPrimitiveData<BACnetApplicationDatatype>
&ICodecContextSpecificData
&IHaveDataValue<V>
{
    var _arr_test_1:Array<Byte>
    let _check_len:Int64
    var _packet_test:ByteBuf

    _arr_test_1 = arg_Target.encodingToContextSpecificData()
    @Expect(_arr_test_1,arg_CheckArr)
    _check_len = _arr_test_1.size
    _packet_test = ByteBuf(_arr_test_1)
    arg_Decode.decodingContextSpecificDataFromArrayByte(_packet_test)

    let _v_isEqual = arg_Decode.isDataEqual(arg_Target)
    @Expect(_v_isEqual,true)
    @Expect(_packet_test.cursor,_check_len)    
}

func test_BACnetApplicationDatatypes_ToContextSpecificData_Erros
<T>
(arg_Target:T,arg_CheckArr:Array<Byte>)
:Unit 
where T<:ICodecPrimitiveData<BACnetApplicationDatatype>
&ICodecContextSpecificData
{
    var _packet_test:ByteBuf = ByteBuf(arg_CheckArr)
    @ExpectThrows[BACnetDecodeError](arg_Target.decodingContextSpecificDataFromArrayByte(_packet_test))
}

@Test
func test_BACnet_Null(){
    //检查当方向不是所解的类型时有没有跳转
    var _arr_test_1 :Array<Byte> = [0b0001_0000]
    var _packet_test = ByteBuf(_arr_test_1, 1)
    var _decode_value:BACnetApplicationDatatype= BACnet_Null.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is BACnet_Null,false)
    @Expect(_decode_value is BACnet_Boolean,true)
    var _decode_value_as = _decode_value as BACnet_Boolean
    var _decode_value_as_value = _decode_value_as.getOrThrow()
    @Expect(_decode_value_as_value.dataValue,false)

    var _test_Target = BACnet_Null()
    var _check_arr:Array<Byte>

    //Null 无 dataValue，直接验证编解码
    _check_arr = [0b0000_0000]
    var _arr_encode = _test_Target.encodingToPrimitiveData()
    @Expect(_arr_encode,_check_arr)
    var _packet_decode = ByteBuf(_arr_encode)
    var _decode_null = BACnet_Null.decodingPrimitiveDataFromArrayByte(_packet_decode)
    @Expect(_decode_null is BACnet_Null,true)

    _check_arr = [0b0000_1000]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Null>(_test_Target,_check_arr)
    
    _check_arr = [0b0000_0001]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Null>(_test_Target,_check_arr)
}

@Test
func test_BACnet_Boolean(){
    var _test_Target = BACnet_Boolean()
    var _context_decode = BACnet_Boolean()
    var _check_arr:Array<Byte>

    _test_Target.dataValue = false
    _check_arr = [0b0001_0000]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_Boolean,Bool>(_test_Target,_check_arr)

    _test_Target.dataValue = true
    _check_arr = [0b0001_0001]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_Boolean,Bool>(_test_Target,_check_arr)

    _check_arr = [0b0000_1000]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Boolean>(_test_Target,_check_arr)

    _check_arr = [0b0001_0101]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Boolean>(_test_Target,_check_arr)

    _test_Target.tagNumber = 9
    _test_Target.dataValue = false
    _check_arr = [0b1001_1001,0b0000_0000]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Boolean,Bool>(_test_Target,_check_arr,_context_decode)
  
    _test_Target.tagNumber = 9
    _test_Target.dataValue = true
    _check_arr = [0b1001_1001,0b0000_0001]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Boolean,Bool>(_test_Target,_check_arr,_context_decode)
  
    _test_Target.tagNumber = 66
    _test_Target.dataValue = true
    _check_arr = [0b1111_1001,0X42u8,0b0000_0001]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Boolean,Bool>(_test_Target,_check_arr,_context_decode)

    _check_arr = [0b1001_0000]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Boolean>(_test_Target,_check_arr)

    _check_arr = [0b1001_1100]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Boolean>(_test_Target,_check_arr)

    _check_arr = [0b1001_1000,0b1001_1000]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Boolean>(_test_Target,_check_arr)
}

@Test
func test_BACnet_UnsignedInteger(){
    var _test_Target = BACnet_UnsignedInteger()
    var _context_decode = BACnet_UnsignedInteger()
    var _check_arr:Array<Byte>

    _test_Target.dataValue = 255
    _check_arr = [0b0010_0001u8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr)

    _test_Target.dataValue = 256
    _check_arr = [0b0010_0010u8,0X01u8,0X00u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr)

    _test_Target.dataValue = 65535
    _check_arr = [0b0010_0010u8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr)

    _test_Target.dataValue = 16777215
    _check_arr = [0b0010_0011u8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr)

    _test_Target.dataValue = 4294967295
    _check_arr = [0b0010_0100u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr)
    
    _test_Target.dataValue = 1099511627775
    _check_arr = [0b0010_0101u8,0X05u8,
                    0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr)

    _test_Target.dataValue = 281474976710655
    _check_arr = [0b0010_0101u8,0X06u8,
                    0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr)

    _test_Target.dataValue = 72057594037927935
    _check_arr = [0b0010_0101u8,0X07u8,
                    0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr)

    _test_Target.dataValue = 18446744073709551615
    _check_arr = [0b0010_0101u8,0X08u8,
                    0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr)

    //上下文报文用原语解码函数，应当报错
    _check_arr = [0b0010_1001u8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_UnsignedInteger>(_test_Target,_check_arr)

    //数字位数超8位，应当报错
    _check_arr = [0b0010_0101u8,0X09u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_UnsignedInteger>(_test_Target,_check_arr)

    //数字位数为0，应当报错
    _check_arr = [0b0010_0000u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_UnsignedInteger>(_test_Target,_check_arr)

    _test_Target.tagNumber = 9
    _test_Target.dataValue = 255
    _check_arr = [0b1001_1001u8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr,_context_decode)
  
    _test_Target.tagNumber = 66
    _test_Target.dataValue = 255
    _check_arr = [0b1111_1001u8,0X42u8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr,_context_decode)
 

    _test_Target.tagNumber = 3
    _test_Target.dataValue = 65535
    _check_arr = [0b0011_1010u8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = 65535
    _check_arr = [0b1111_1010u8,0X42u8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr,_context_decode)
 
    _test_Target.tagNumber = 3
    _test_Target.dataValue = 16777215
    _check_arr = [0b0011_1011u8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = 16777215
    _check_arr = [0b1111_1011u8,0X42u8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr,_context_decode)


    _test_Target.tagNumber = 3
    _test_Target.dataValue = 4294967295
    _check_arr = [0b0011_1100u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr,_context_decode)
    
    _test_Target.tagNumber = 66
    _test_Target.dataValue = 4294967295
    _check_arr = [0b1111_1100u8,0X42u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = 1099511627775
    _check_arr = [0b1111_1101u8,0X42u8,0X05u8,
                    0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = 281474976710655
    _check_arr = [0b1111_1101u8,0X42u8,0X06u8,
                    0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = 72057594037927935
    _check_arr = [0b1111_1101u8,0X42u8,0X07u8,
                    0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = 18446744073709551615
    _check_arr = [0b1111_1101u8,0X42u8,0X08u8,
                    0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_UnsignedInteger,UInt64>(_test_Target,_check_arr,_context_decode)

    //原语报文用上下文解码函数，应当报错
    _check_arr = [0b0011_0100u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_UnsignedInteger>(_test_Target,_check_arr)
    //长度超过8
    _check_arr = [0b1111_1101u8,0X42u8,0X09u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_UnsignedInteger>(_test_Target,_check_arr)
    //长度为0
    _check_arr = [0b0011_1000u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_UnsignedInteger>(_test_Target,_check_arr)

}

@Test
func test_BACnet_SignedInteger(){

    var _test_Target = BACnet_SignedInteger()
    var _context_decode = BACnet_SignedInteger()
    var _check_arr:Array<Byte>

    _test_Target.dataValue = -128
    _check_arr = [0b0011_0001u8,0X80u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr)

    _test_Target.dataValue = 127
    _check_arr = [0b0011_0001u8,0X7Fu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr)

    _test_Target.dataValue = -32768
    _check_arr = [0b0011_0010u8,0X80u8,0X00u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr)

    _test_Target.dataValue = 32767
    _check_arr = [0b0011_0010u8,0X7Fu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr)

    _test_Target.dataValue = -8388608
    _check_arr = [0b0011_0011u8,0X80u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr)

    _test_Target.dataValue = 8388607
    _check_arr = [0b0011_0011u8,0X7Fu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr)

    _test_Target.dataValue = -2147483648
    _check_arr = [0b0011_0100u8,0X80u8,0X00u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr)

    _test_Target.dataValue = 2147483647
    _check_arr = [0b0011_0100u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr)

    _test_Target.dataValue = -549755813888
    _check_arr = [0b0011_0101u8,0X05u8,0X80u8,0X00u8,0X00u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr)

    _test_Target.dataValue = 549755813887
    _check_arr = [0b0011_0101u8,0X05u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr)

    _test_Target.dataValue = -140737488355328
    _check_arr = [0b0011_0101u8,0X06u8,
                    0X80u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr)

    _test_Target.dataValue = 140737488355327
    _check_arr = [0b0011_0101u8,0X06u8,
                    0X7Fu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr)

    _test_Target.dataValue = -36028797018963968
    _check_arr = [0b0011_0101u8,0X07u8,
                    0X80u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr)

    _test_Target.dataValue = 36028797018963967
    _check_arr = [0b0011_0101u8,0X07u8,
                    0X7Fu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr)

    _test_Target.dataValue = -9223372036854775808
    _check_arr = [0b0011_0101u8,0X08u8,
                    0X80u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr)

    _test_Target.dataValue = 9223372036854775807
    _check_arr = [0b0011_0101u8,0X08u8,
                    0X7Fu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr)

    //上下文报文用原语解码函数，应当报错
    _check_arr = [0b0011_1100u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_SignedInteger>(_test_Target,_check_arr)

    //数字位数超8位，应当报错
    _check_arr = [0b0011_0101u8,0X09u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_SignedInteger>(_test_Target,_check_arr)

    //数字位数为0，应当报错
    _check_arr = [0b0011_0000u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_SignedInteger>(_test_Target,_check_arr)

    //<<----------------------------------->>
    _test_Target.tagNumber = 8
    _test_Target.dataValue = -128
    _check_arr = [0b1000_1001u8,0X80u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = -128
    _check_arr = [0b1111_1001u8,0X42u8,0X80u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 8
    _test_Target.dataValue = 127
    _check_arr = [0b1000_1001u8,0X7Fu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = 127
    _check_arr = [0b1111_1001u8,0X42u8,0X7Fu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr,_context_decode)


    _test_Target.tagNumber = 8
    _test_Target.dataValue = -32768
    _check_arr = [0b1000_1010u8,0X80u8,0X00u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = -32768
    _check_arr = [0b1111_1010u8,0X42u8,0X80u8,0X00u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 8
    _test_Target.dataValue = 32767
    _check_arr = [0b1000_1010u8,0X7Fu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = 32767
    _check_arr = [0b1111_1010u8,0X42u8,0X7Fu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr,_context_decode)


    _test_Target.tagNumber = 8
    _test_Target.dataValue = -8388608
    _check_arr = [0b1000_1011u8,0X80u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = -8388608
    _check_arr = [0b1111_1011u8,0X42u8,0X80u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr,_context_decode)


    _test_Target.tagNumber = 8
    _test_Target.dataValue = 8388607
    _check_arr = [0b1000_1011u8,0X7Fu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 8
    _test_Target.dataValue = -2147483648
    _check_arr = [0b1000_1100u8,0X80u8,0X00u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 8
    _test_Target.dataValue = 2147483647
    _check_arr = [0b1000_1100u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int64>(_test_Target,_check_arr,_context_decode)

    //原语报文用上下文解码函数，应当报错
    _check_arr = [0b0011_0100u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_SignedInteger>(_test_Target,_check_arr)
    //长度超过8
    _check_arr = [0b0011_1101u8,0X09u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_SignedInteger>(_test_Target,_check_arr)
    //长度为0
    _check_arr = [0b0011_1000u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_SignedInteger>(_test_Target,_check_arr)

}

@Test
func test_BACnet_Real(){

    var _test_Target = BACnet_Real()
    var _context_decode = BACnet_Real()
    var _check_arr:Array<Byte>

    _test_Target.dataValue = -12.7
    _check_arr = [0b0100_0100u8,0XC1u8,0X4Bu8,0X33u8,0X33u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_Real,Float32>(_test_Target,_check_arr)

    _test_Target.dataValue = 0.0
    _check_arr = [0b0100_0100u8,0X00u8,0X00u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_Real,Float32>(_test_Target,_check_arr)

    //上下文报文用原语解码函数，应当报错
    _check_arr = [0b0100_1100u8,0X00u8,0X00u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Real>(_test_Target,_check_arr)

    //数字位数超4位，应当报错
    _check_arr = [0b0100_0101u8,0XC1u8,0X4Bu8,0X33u8,0X33u8,0X33u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Real>(_test_Target,_check_arr)

    //数字位数为0，应当报错
    _check_arr = [0b0100_1001u8,0X00u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Real>(_test_Target,_check_arr)

//<----------------------------------------->
    _test_Target.tagNumber = 8
    _test_Target.dataValue = -12.7
    _check_arr = [0b1000_1100u8,0XC1u8,0X4Bu8,0X33u8,0X33u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Real,Float32>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = -12.7
    _check_arr = [0b1111_1100u8,0X42u8,0XC1u8,0X4Bu8,0X33u8,0X33u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Real,Float32>(_test_Target,_check_arr,_context_decode)


    _test_Target.tagNumber = 8
    _test_Target.dataValue = 0.0
    _check_arr = [0b1000_1100u8,0X00u8,0X00u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Real,Float32>(_test_Target,_check_arr,_context_decode)

    //原语报文用上下文解码函数，应当报错
    _check_arr = [0b1000_0100u8,0XC1u8,0X4Bu8,0X33u8,0X33u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Real>(_test_Target,_check_arr)
    //长度超过4
    _check_arr = [0b1000_1101u8,0XC1u8,0X4Bu8,0X33u8,0X33u8,0X33u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Real>(_test_Target,_check_arr)
    //长度为0
    _check_arr = [0b0100_1001u8,0X00u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Real>(_test_Target,_check_arr)

}



@Test
func test_BACnet_Double(){
    var _test_Target = BACnet_Double()
    var _context_decode = BACnet_Double()
    var _check_arr:Array<Byte>

    _test_Target.dataValue = -12.7
    _check_arr = [0b0101_0101u8,0X08u8,0XC0u8,0X29u8,0X66u8,0X66u8,0X66u8,0X66u8,0X66u8,0X66u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_Double,Float64>(_test_Target,_check_arr)

    _test_Target.dataValue = 0.0
    _check_arr = [0b0101_0101u8,0X08u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_Double,Float64>(_test_Target,_check_arr)
    
    //上下文报文用原语解码函数，应当报错
    _check_arr = [0b0101_1101u8,0X08u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Double>(_test_Target,_check_arr)

    _check_arr = [0b0101_0100u8,0X08u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Double>(_test_Target,_check_arr)

    _check_arr = [0b0101_0101u8,0X04u8,0X00u8,0X00u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Double>(_test_Target,_check_arr)


    _test_Target.dataValue = -12.7
    _test_Target.tagNumber = 3
    _check_arr = [0b0011_1101u8,0X08u8,0XC0u8,0X29u8,0X66u8,0X66u8,0X66u8,0X66u8,0X66u8,0X66u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Double,Float64>(_test_Target,_check_arr,_context_decode)

    _test_Target.dataValue = -12.7
    _test_Target.tagNumber = 66
    _check_arr = [  0b1111_1101u8,0X42u8,0X08u8,0XC0u8,
                    0X29u8,0X66u8,0X66u8,0X66u8,
                    0X66u8,0X66u8,0X66u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Double,Float64>(_test_Target,_check_arr,_context_decode)

    
    _test_Target.dataValue = 0.0
    _test_Target.tagNumber = 3
    _check_arr = [0b0011_1101u8,0X08u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Double,Float64>(_test_Target,_check_arr,_context_decode)

    _check_arr = [0b0011_0101u8,0X08u8,0XC0u8,0X29u8,0X66u8,0X66u8,0X66u8,0X66u8,0X66u8,0X66u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Double>(_test_Target,_check_arr)

    _check_arr = [0b0011_1001u8,0X08u8,0XC0u8,0X29u8,0X66u8,0X66u8,0X66u8,0X66u8,0X66u8,0X66u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Double>(_test_Target,_check_arr)

    _check_arr = [0b0011_1101u8,0X04u8,0XC0u8,0X29u8,0X66u8,0X66u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Double>(_test_Target,_check_arr)
    
    _check_arr = [0b0011_1110u8,0X08u8,0XC0u8,0X29u8,0X66u8,0X66u8,0X66u8,0X66u8,0X66u8,0X66u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Double>(_test_Target,_check_arr)

}

@Test
func test_BACnet_OctetString(){
    var _test_Target = BACnet_OctetString()
    var _context_decode = BACnet_OctetString()
    var _check_arr:Array<Byte>

    _test_Target.dataValue = [0XFEu8,0XDCu8,0XBAu8,0X98u8]
    _check_arr = [0b0110_0100u8,0XFEu8,0XDCu8,0XBAu8,0X98u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_OctetString,Array<Byte>>(_test_Target,_check_arr)

    _test_Target.dataValue = [0XFEu8,0XDCu8,0XBAu8,0X98u8,0XFEu8,0XDCu8,0XBAu8,0X98u8]
    _check_arr = [0b0110_0101u8,0X08u8,0XFEu8,0XDCu8,0XBAu8,0X98u8,0XFEu8,0XDCu8,0XBAu8,0X98u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_OctetString,Array<Byte>>(_test_Target,_check_arr)

    //上下文报文用原语解码函数，应当报错
    _check_arr = [0b0110_1100u8,0XFEu8,0XDCu8,0XBAu8,0X98u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_OctetString>(_test_Target,_check_arr)



    _test_Target.dataValue = [0XFEu8,0XDCu8,0XBAu8,0X98u8]
    _test_Target.tagNumber = 66
    _check_arr = [  0b1111_1100u8,0X42u8,0XFEu8,0XDCu8,0XBAu8,0X98u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_OctetString,Array<Byte>>(_test_Target,_check_arr,_context_decode)

    _test_Target.dataValue = [0XFEu8,0XDCu8,0XBAu8,0X98u8,0XFEu8,0XDCu8,0XBAu8,0X98u8]
    _test_Target.tagNumber = 66
    _check_arr = [  0b1111_1101u8,0X42u8,0X08u8,0XFEu8,
                    0XDCu8,0XBAu8,0X98u8,0XFEu8,
                    0XDCu8,0XBAu8,0X98u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_OctetString,Array<Byte>>(_test_Target,_check_arr,_context_decode)

    _check_arr = [0b1111_0100u8,0X42u8,0XFEu8,0XDCu8,0XBAu8,0X98u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_OctetString>(_test_Target,_check_arr)
}

@Test
func test_BACnet_CharacterString(){
    var _test_Target = BACnet_CharacterString()
    var _context_decode = BACnet_CharacterString()
    var _check_arr:Array<Byte>

    //UTF_8
    _test_Target.dataValue = "ÊString"
    _test_Target.encodeCharSet = BACnetCharSetChoice.UTF_8
    //75, 09, 00, C3, 8A, 53, 74, 72, 69, 6E, 67,
    _check_arr = [0b0111_0101u8,0X09u8,0X00u8,0XC3u8,0X8Au8,0X53u8,0X74u8,0X72u8,0X69u8,0X6Eu8,0X67u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_CharacterString,String>(_test_Target,_check_arr)

    //CodePage(1252)
    //01, 04, E4 这3个字节指定了CodePage(1252)  编解码器
    //可以看到编码内容明显变化
    _test_Target.dataValue = "ÊString"
    _test_Target.encodeCharSet = BACnetCharSetChoice.CodePage(1252)
    //75, 0A, 01, 04, E4, CA, 53, 74, 72, 69, 6E, 67, 
    _check_arr = [0b0111_0101u8,0X0Au8,0X01u8,0X04u8,0XE4u8,0XCAu8,0X53u8,0X74u8,0X72u8,0X69u8,0X6Eu8,0X67u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_CharacterString,String>(_test_Target,_check_arr)
    
    //ISO_8859_1
    //对比CodePage(1252)编码，01, 04, E4 这3个字节变成一个字节05,
    //后续字符一样，因为内码1252其实本来就对应的是ISO_8859_1或者也叫WINDOWS_1252
    _test_Target.dataValue = "ÊString"
    _test_Target.encodeCharSet = BACnetCharSetChoice.ISO_8859_1
    //75, 08, 05, CA, 53, 74, 72, 69, 6E, 67, 
    _check_arr = [0b0111_0101u8,0X08u8,0X05u8,0XCAu8,0X53u8,0X74u8,0X72u8,0X69u8,0X6Eu8,0X67u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_CharacterString,String>(_test_Target,_check_arr)
    
    //JISX0208
    //因为JISX0208没有Ê，charset4cj库编码是抛出异常，自动换UTF_8解码，所以最后编出来的码是UTF_8编码
    _test_Target.dataValue = "ÊString"
    _test_Target.encodeCharSet = BACnetCharSetChoice.JISX0208
    //75, 09, 00, C3, 8A, 53, 74, 72, 69, 6E, 67,
    _check_arr = [0b0111_0101u8,0X09u8,0X00u8,0XC3u8,0X8Au8,0X53u8,0X74u8,0X72u8,0X69u8,0X6Eu8,0X67u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_CharacterString,String>(_test_Target,_check_arr)

    //JISX0208
    //这个没异常，所以最后编出来的是ISO_2022_JP编码
    _test_Target.dataValue = "かString"
    _test_Target.encodeCharSet = BACnetCharSetChoice.JISX0208
    //75, 0F, 02, 1B, 24, 42, 24, 2B, 1B, 28, 42, 53, 74, 72, 69, 6E, 67,
    _check_arr = [0b0111_0101u8,0X0Fu8,0X02u8,
    0X1Bu8,0X24u8,0X42u8,0X24u8,0X2Bu8,0X1Bu8,0X28u8,0X42u8
    ,0X53u8,0X74u8,0X72u8,0X69u8,0X6Eu8,0X67u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_CharacterString,String>(_test_Target,_check_arr)

    //UTF_32
    //可以看到和JISX0208编码有明显差异，当然这个不能说明JISX0208那个编码就是对的
    _test_Target.dataValue = "かString"
    _test_Target.encodeCharSet = BACnetCharSetChoice.UTF_32
    //75, 1D, 03, 00, 00, 30, 4B, 00, 00, 00, 53, 00, 00, 00, 74, 00, 00, 00, 72, 00, 00, 00, 69, 00, 00, 00, 6E, 00, 00, 00, 67, 
    _check_arr = [0b0111_0101u8,0X1Du8,0X03u8,
    0X00u8,0X00u8,0X30u8,0X4Bu8,0X00u8,0X00u8,0X00u8,0X53u8,0X00u8,0X00u8,0X00u8,0X74u8,0X00u8,0X00u8,0X00u8,0X72u8
    ,0X00u8,0X00u8,0X00u8,0X69u8,0X00u8,0X00u8,0X00u8,0X6Eu8,0X00u8,0X00u8,0X00u8,0X67u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_CharacterString,String>(_test_Target,_check_arr)

    //UTF_16
    //可以看到和JISX0208编码有明显差异，当然这个不能说明JISX0208那个编码就是对的
    _test_Target.dataValue = "かString"
    _test_Target.encodeCharSet = BACnetCharSetChoice.UTF_16
    //75, 0F, 04, 30, 4B, 00, 53, 00, 74, 00, 72, 00, 69, 00, 6E, 00, 67, 
    _check_arr = [0b0111_0101u8,0X0Fu8,0X04u8,
    0X30u8,0X4Bu8,0X00u8,0X53u8,0X00u8,0X74u8,0X00u8,0X72u8
    ,0X00u8,0X69u8,0X00u8,0X6Eu8,0X00u8,0X67u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_CharacterString,String>(_test_Target,_check_arr)


    //上下文报文用原语解码函数，应当报错
    _test_Target.dataValue = "かString"
    _check_arr = [0b0111_1101u8,0X0Fu8,0X04u8,
    0X30u8,0X4Bu8,0X00u8,0X53u8,0X00u8,0X74u8,0X00u8,0X72u8
    ,0X00u8,0X69u8,0X00u8,0X6Eu8,0X00u8,0X67u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_CharacterString>(_test_Target,_check_arr)


    _test_Target.dataValue = "ÊString"
    _test_Target.tagNumber = 66
    _test_Target.encodeCharSet = BACnetCharSetChoice.UTF_8
    //FD, 42, 09, 00, C3, 8A, 53, 74, 72, 69, 6E, 67,
    _check_arr = [  0b1111_1101u8,0X42u8,0X09u8,0X00u8,0XC3u8,0X8Au8,0X53u8,0X74u8,0X72u8,0X69u8,0X6Eu8,0X67u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_CharacterString,String>(_test_Target,_check_arr,_context_decode)

    _test_Target.dataValue = "ÊString"
    _test_Target.tagNumber = 66
    _test_Target.encodeCharSet = BACnetCharSetChoice.CodePage(1252)
    //FD, 42, 0A, 01, 04, E4, CA, 53, 74, 72, 69, 6E, 67,
    _check_arr = [  0b1111_1101u8,0X42u8,0X0Au8,0X01u8,0X04u8,0XE4u8,0XCAu8,0X53u8,0X74u8,0X72u8,0X69u8,0X6Eu8,0X67u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_CharacterString,String>(_test_Target,_check_arr,_context_decode)

    _test_Target.dataValue = "ÊString"
    _test_Target.tagNumber = 66
    _test_Target.encodeCharSet = BACnetCharSetChoice.ISO_8859_1
    //FD, 42, 08, 05, CA, 53, 74, 72, 69, 6E, 67,
    _check_arr = [  0b1111_1101u8,0X42u8,0X08u8,0X05u8,
    0XCAu8,0X53u8,0X74u8,0X72u8,0X69u8,0X6Eu8,0X67u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_CharacterString,String>(_test_Target,_check_arr,_context_decode)

    //JISX0208
    //因为JISX0208没有Ê，charset4cj库编码是抛出异常，自动换UTF_8解码，所以最后编出来的码是UTF_8编码
    _test_Target.dataValue = "ÊString"
    _test_Target.tagNumber = 66
    _test_Target.encodeCharSet = BACnetCharSetChoice.JISX0208
    //FD, 42, 09, 00, C3, 8A, 53, 74, 72, 69, 6E, 67,
    _check_arr = [  0b1111_1101u8,0X42u8,0X09u8,0X00u8,
    0XC3u8,0X8Au8,0X53u8,0X74u8,0X72u8,0X69u8,0X6Eu8,0X67u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_CharacterString,String>(_test_Target,_check_arr,_context_decode)

    //JISX0208
    //这个没异常，所以最后编出来的是ISO_2022_JP编码
    _test_Target.dataValue = "かString"
    _test_Target.tagNumber = 66
    _test_Target.encodeCharSet = BACnetCharSetChoice.JISX0208
    //FD, 42, 0F, 02, 1B, 24, 42, 24, 2B, 1B, 28, 42, 53, 74, 72, 69, 6E, 67,
    _check_arr = [0b1111_1101u8,0X42u8,0X0Fu8,0X02u8,
    0X1Bu8,0X24u8,0X42u8,0X24u8,0X2Bu8,0X1Bu8,0X28u8,0X42u8
    ,0X53u8,0X74u8,0X72u8,0X69u8,0X6Eu8,0X67u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_CharacterString,String>(_test_Target,_check_arr,_context_decode)

    //UTF_32
    //可以看到和JISX0208编码有明显差异，当然这个不能说明JISX0208那个编码就是对的
    _test_Target.dataValue = "かString"
    _test_Target.tagNumber = 66
    _test_Target.encodeCharSet = BACnetCharSetChoice.UTF_32
    //FD, 42, 1D, 03, 00, 00, 30, 4B, 00, 00, 00, 53, 00, 00, 00, 74, 00, 00, 00, 72, 00, 00, 00, 69, 00, 00, 00, 6E, 00, 00, 00, 67,
    _check_arr = [0b1111_1101u8,0X42u8,0X1Du8,0X03u8,
    0X00u8,0X00u8,0X30u8,0X4Bu8,0X00u8,0X00u8,0X00u8,0X53u8,
    0X00u8,0X00u8,0X00u8,0X74u8,0X00u8,0X00u8,0X00u8,0X72u8,
    0X00u8,0X00u8,0X00u8,0X69u8,0X00u8,0X00u8,0X00u8,0X6Eu8,
    0X00u8,0X00u8,0X00u8,0X67u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_CharacterString,String>(_test_Target,_check_arr,_context_decode)

    //UTF_16
    //可以看到和JISX0208编码有明显差异，当然这个不能说明JISX0208那个编码就是对的
    _test_Target.dataValue = "かString"
    _test_Target.tagNumber = 66
    _test_Target.encodeCharSet = BACnetCharSetChoice.UTF_16
    //FD, 42, 0F, 04, 30, 4B, 00, 53, 00, 74, 00, 72, 00, 69, 00, 6E, 00, 67,
    _check_arr = [0b1111_1101u8,0X42u8,0X0Fu8,0X04u8,
    0X30u8,0X4Bu8,0X00u8,0X53u8,
    0X00u8,0X74u8,0X00u8,0X72u8,
    0X00u8,0X69u8,0X00u8,0X6Eu8,
    0X00u8,0X67u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_CharacterString,String>(_test_Target,_check_arr,_context_decode)


    _check_arr = [0b1111_0101u8,0X42u8,0X0Fu8,0X04u8,
    0X30u8,0X4Bu8,0X00u8,0X53u8,
    0X00u8,0X74u8,0X00u8,0X72u8,
    0X00u8,0X69u8,0X00u8,0X6Eu8,
    0X00u8,0X67u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_CharacterString>(_test_Target,_check_arr)

} 

@Test
func test_BACnet_BitString(){
    var _test_Target = BACnet_BitString()

    var _check_arr:Array<Byte>

    _test_Target.dataValue = [true,false,true,false,true]
    _check_arr = [0b1000_0010u8,
                    0X03u8,0XA8u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_BitString,Array<Bool>>(_test_Target,_check_arr)

    _test_Target.dataValue = [false,false,true,false,true,true,false,true,false,true,true,false,true,false,true,false,false,true,false,true,true,false,true,false,true,true,false,true,false,true]
    _check_arr = [0b1000_0101u8,0X05u8,
                    0X02u8,0X2Du8,0X6Au8,0X5Au8,0XD4u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_BitString,Array<Bool>>(_test_Target,_check_arr)

    //上下文报文用原语解码函数，应当报错
    _check_arr = [0b1000_1101u8,0X05u8,
                    0X02u8,0X2Du8,0X6Au8,0X5Au8,0XD4u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_BitString>(_test_Target,_check_arr)

}

@Test
func test_BACnet_Enumerated(){
    var _test_Target = BACnet_Enumerated()
    var _context_decode = BACnet_Enumerated()
    var _check_arr:Array<Byte>

    _test_Target.dataValue = 255
    _check_arr = [0b1001_0001u8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_Enumerated,UInt32>(_test_Target,_check_arr)

    _test_Target.dataValue = 256
    _check_arr = [0b1001_0010u8,0X01u8,0X00u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_Enumerated,UInt32>(_test_Target,_check_arr)

    _test_Target.dataValue = 65535
    _check_arr = [0b1001_0010u8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_Enumerated,UInt32>(_test_Target,_check_arr)

    _test_Target.dataValue = 16777215
    _check_arr = [0b1001_0011u8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_Enumerated,UInt32>(_test_Target,_check_arr)

    _test_Target.dataValue = 4294967295
    _check_arr = [0b1001_0100u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_Enumerated,UInt32>(_test_Target,_check_arr)

    //上下文报文用原语解码函数，应当报错
    _check_arr = [0b1001_1001u8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Enumerated>(_test_Target,_check_arr)

    //数字位数超4位，应当报错
    _check_arr = [0b1001_0101u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Enumerated>(_test_Target,_check_arr)

    //数字位数为0，应当报错
    _check_arr = [0b1001_0000u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Enumerated>(_test_Target,_check_arr)

    _test_Target.tagNumber = 9
    _test_Target.dataValue = 255
    _check_arr = [0b1001_1001u8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Enumerated,UInt32>(_test_Target,_check_arr,_context_decode)
  
    _test_Target.tagNumber = 66
    _test_Target.dataValue = 255
    _check_arr = [0b1111_1001u8,0X42u8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Enumerated,UInt32>(_test_Target,_check_arr,_context_decode)
 

    _test_Target.tagNumber = 3
    _test_Target.dataValue = 65535
    _check_arr = [0b0011_1010u8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Enumerated,UInt32>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = 65535
    _check_arr = [0b1111_1010u8,0X42u8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Enumerated,UInt32>(_test_Target,_check_arr,_context_decode)
 
    _test_Target.tagNumber = 3
    _test_Target.dataValue = 16777215
    _check_arr = [0b0011_1011u8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Enumerated,UInt32>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = 16777215
    _check_arr = [0b1111_1011u8,0X42u8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Enumerated,UInt32>(_test_Target,_check_arr,_context_decode)


    _test_Target.tagNumber = 3
    _test_Target.dataValue = 4294967295
    _check_arr = [0b0011_1100u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Enumerated,UInt32>(_test_Target,_check_arr,_context_decode)
    
    _test_Target.tagNumber = 66
    _test_Target.dataValue = 4294967295
    _check_arr = [0b1111_1100u8,0X42u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Enumerated,UInt32>(_test_Target,_check_arr,_context_decode)

    //原语报文用上下文解码函数，应当报错
    _check_arr = [0b0011_0100u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Enumerated>(_test_Target,_check_arr)
    //长度超过4
    _check_arr = [0b0011_1101u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Enumerated>(_test_Target,_check_arr)
    //长度为0
    _check_arr = [0b0011_1000u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Enumerated>(_test_Target,_check_arr)
}

@Test
func test_BACnet_Date(){

    var _test_Target = BACnet_Date()
    var _context_decode = BACnet_Date()
    var _check_arr:Array<Byte>

    //时间总是0:0:0:0
    _test_Target.dataValue = DateTime.of(year: 2025, month: 7, dayOfMonth: 25, hour: 0, minute: 0, second: 0, nanosecond: 0, timeZone: TimeZone.Local)
    _check_arr = [0b1010_0100u8,
                    0X7Du8,0X07u8,0X19u8,0X05u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_Date,DateTime>(_test_Target,_check_arr)

    //上下文报文用原语解码函数，应当报错
    _check_arr = [0b1010_1100u8,0X7Du8,0X07u8,0X19u8,0X05u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Date>(_test_Target,_check_arr)

    //数字位数超4位，应当报错
    _check_arr = [0b1010_0101u8,0X7Du8,0X07u8,0X19u8,0X05u8,0X05u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Date>(_test_Target,_check_arr)

    //数字位数为0，应当报错
    _check_arr = [0b1010_0000u8,0X7Du8,0X07u8,0X19u8,0X05u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Date>(_test_Target,_check_arr)

//<----------------------------------------->
    _test_Target.tagNumber = 66
    //时间总是0:0:0:0
    _test_Target.dataValue = DateTime.of(year: 2025, month: 7, dayOfMonth: 25, hour: 0, minute: 0, second: 0, nanosecond: 0, timeZone: TimeZone.Local)
    _check_arr = [0b1111_1100u8,0X42u8,
                    0X7Du8,0X07u8,0X19u8,0X05u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Date,DateTime>(_test_Target,_check_arr,_context_decode)

    //原语报文用上下文解码函数，应当报错
    _check_arr = [0b1111_0100u8,0X42u8,
                    0X7Du8,0X07u8,0X19u8,0X05u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Date>(_test_Target,_check_arr)
    //长度超过4
    _check_arr = [0b1111_1101u8,0X42u8,
                    0X7Du8,0X07u8,0X19u8,0X05u8,0X05u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Date>(_test_Target,_check_arr)
    //长度为0
    _check_arr = [0b1111_1000u8,0X42u8,
                    0X7Du8,0X07u8,0X19u8,0X05u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Date>(_test_Target,_check_arr)

}

@Test
func test_BACnet_Time(){

    var _test_Target = BACnet_Time()
    var _context_decode = BACnet_Time()
    var _check_arr:Array<Byte>
    //日期总是2025-1-1
    _test_Target.dataValue = DateTime.of(year: 2025, month: 1, dayOfMonth: 1, hour: 8, minute: 8, second: 8, nanosecond: 80000000, timeZone: TimeZone.Local)
    _check_arr = [0b1011_0100u8,
                    0X08u8,0X08u8,0X08u8,0X08u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_Time,DateTime>(_test_Target,_check_arr)

    //上下文报文用原语解码函数，应当报错
    _check_arr = [0b1011_1100u8,
                    0X08u8,0X08u8,0X08u8,0X08u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Time>(_test_Target,_check_arr)

    //数字位数超4位，应当报错
    _check_arr = [0b1011_0101u8,
                    0X08u8,0X08u8,0X08u8,0X08u8,0X08u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Time>(_test_Target,_check_arr)

    //数字位数为0，应当报错
    _check_arr = [0b1011_0000u8,
                    0X08u8,0X08u8,0X08u8,0X08u8,0X08u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Time>(_test_Target,_check_arr)

//<----------------------------------------->
    _test_Target.tagNumber = 66
    //日期总是2025-1-1
    _test_Target.dataValue = DateTime.of(year: 2025, month: 1, dayOfMonth: 1, hour: 8, minute: 8, second: 8, nanosecond: 80000000, timeZone: TimeZone.Local)
    _check_arr = [0b1111_1100u8,0X42u8,
                    0X08u8,0X08u8,0X08u8,0X08u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Time,DateTime>(_test_Target,_check_arr,_context_decode)

    //原语报文用上下文解码函数，应当报错
    _check_arr = [0b1111_0100u8,0X42u8,
                    0X08u8,0X08u8,0X08u8,0X08u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Time>(_test_Target,_check_arr)
    //长度超过4
    _check_arr = [0b1111_1101u8,0X42u8,0X05u8,
                    0X08u8,0X08u8,0X08u8,0X08u8,0X08u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Time>(_test_Target,_check_arr)
    //长度为0
    _check_arr = [0b1111_1000u8,0X42u8,
                    0X08u8,0X08u8,0X08u8,0X08u8,0X08u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Time>(_test_Target,_check_arr)

}

@Test
func test_BACnet_ObjectIdentifier(){

    var _test_Target = BACnet_ObjectIdentifier()
    var _context_decode = BACnet_ObjectIdentifier()
    var _check_arr:Array<Byte>
    _test_Target.dataValue = BACnetObjectIdentifierStruct(BACnetObjectTypeChoice.analog_value, 666)
    _check_arr = [0b1100_0100u8,
                    0X00u8,0X80u8,0X02u8,0X9Au8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_ObjectIdentifier,BACnetObjectIdentifierStruct>(_test_Target,_check_arr)

    //上下文报文用原语解码函数，应当报错
    _check_arr = [0b1100_1100u8,
                    0X00u8,0X80u8,0X02u8,0X9Au8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_ObjectIdentifier>(_test_Target,_check_arr)

    //数字位数超4位，应当报错
    _check_arr = [0b1100_0101u8,
                    0X00u8,0X80u8,0X02u8,0X9Au8,0X9Au8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_ObjectIdentifier>(_test_Target,_check_arr)

    //数字位数为0，应当报错
    _check_arr = [0b1100_0000u8,
                    0X00u8,0X80u8,0X02u8,0X9Au8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_ObjectIdentifier>(_test_Target,_check_arr)

//<----------------------------------------->
    _test_Target.tagNumber = 66
    _test_Target.dataValue = BACnetObjectIdentifierStruct(BACnetObjectTypeChoice.analog_value, 666)
    _check_arr = [0b1111_1100u8,0X42u8,
                    0X00u8,0X80u8,0X02u8,0X9Au8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_ObjectIdentifier,BACnetObjectIdentifierStruct>(_test_Target,_check_arr,_context_decode)

    //原语报文用上下文解码函数，应当报错
    _check_arr = [0b1111_0100u8,0X42u8,
                    0X00u8,0X80u8,0X02u8,0X9Au8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_ObjectIdentifier>(_test_Target,_check_arr)
    //长度超过4
    _check_arr = [0b1111_1101u8,0X42u8,
                    0X00u8,0X80u8,0X02u8,0X9Au8,0X9Au8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_ObjectIdentifier>(_test_Target,_check_arr)
    //长度为0
    _check_arr = [0b1111_1000u8,0X42u8,
                    0X00u8,0X80u8,0X02u8,0X9Au8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_ObjectIdentifier>(_test_Target,_check_arr)

}

//20.2.1.3.2 Length 扩展长度解码回归测试
@Test
func test_readBACnetApplicationDataLength_extended_length(){
    //1字节扩展：扩展字节值即为实际长度(0..253)
    var _packet_1 = ByteBuf([0xFDu8])
    @Expect(readBACnetApplicationDataLength(0b0000_0101u8, _packet_1), UInt32(253))
    @Expect(_packet_1.cursor, 1)

    //2字节扩展：首字节254，后跟2字节大端扩展长度=254
    var _packet_2 = ByteBuf([0xFEu8, 0x00u8, 0xFEu8])
    @Expect(readBACnetApplicationDataLength(0b0000_0101u8, _packet_2), UInt32(254))
    @Expect(_packet_2.cursor, 3)

    //2字节扩展：=65535
    var _packet_3 = ByteBuf([0xFEu8, 0xFFu8, 0xFFu8])
    @Expect(readBACnetApplicationDataLength(0b0000_0101u8, _packet_3), UInt32(65535))
    @Expect(_packet_3.cursor, 3)

    //4字节扩展：首字节255，后跟4字节大端扩展长度=65536
    var _packet_4 = ByteBuf([0xFFu8, 0x00u8, 0x01u8, 0x00u8, 0x00u8])
    @Expect(readBACnetApplicationDataLength(0b0000_0101u8, _packet_4), UInt32(65536))
    @Expect(_packet_4.cursor, 5)
}

//BACnet_APDU 默认 PDU 类型应为 Confirmed_Request_Pdu(0)
@Test
func test_BACnet_APDU_default_pdu_type(){
    let _apdu = BACnet_APDU()
    @Expect(_apdu.pdu_Type.toUInt8(), 0u8)
}