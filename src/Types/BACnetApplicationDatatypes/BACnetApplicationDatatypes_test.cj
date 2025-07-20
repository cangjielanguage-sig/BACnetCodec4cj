package BACnetCodec4cj.Types.BACnetApplicationDatatypes
import std.unittest
import BACnetCodec4cj.ByteBuf.*
import BACnetCodec4cj.BACnetException.*
import BACnetCodec4cj.InterFaces.*

func test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings
<T,V>
(arg_Target:T,arg_CheckArr:Array<Byte>)
:Unit 
where T<:ICodecBACnetApplicationData<BACnetApplicationDatatype>
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
where T<:ICodecBACnetApplicationData<BACnetApplicationDatatype>
{
    var _packet_test:ByteBuf = ByteBuf(arg_CheckArr)
    @ExpectThrows[BACnetDecodeErro](T.decodingPrimitiveDataFromArrayByte(_packet_test))
}


func test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings
<T,V>
(arg_Target:T,arg_CheckArr:Array<Byte>,arg_Decode:T)
:Unit 
where T<:ICodecBACnetApplicationData<BACnetApplicationDatatype>
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
where T<:ICodecBACnetApplicationData<BACnetApplicationDatatype>
{
    var _packet_test:ByteBuf = ByteBuf(arg_CheckArr)
    @ExpectThrows[BACnetDecodeErro](arg_Target.decodingContextSpecificDataFromArrayByte(_packet_test))
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
    var _context_decode = BACnet_Null()
    var _check_arr:Array<Byte>

    _check_arr = [0b0000_0000]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_Null,Option<Bool>>(_test_Target,_check_arr)

    _check_arr = [0b0000_1000]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Null>(_test_Target,_check_arr)
    
    _check_arr = [0b0000_0001]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_Null>(_test_Target,_check_arr)

    _test_Target.tagNumber = 9
    _check_arr = [0b1001_1000]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Null,Option<Bool>>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _check_arr = [0b1111_1000,0X42u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_Null,Option<Bool>>(_test_Target,_check_arr,_context_decode)
  
    _check_arr = [0b1001_0000]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Null>(_test_Target,_check_arr)

    _check_arr = [0b1001_1100]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_Null>(_test_Target,_check_arr)
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
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_UnsignedInteger,UInt32>(_test_Target,_check_arr)

    _test_Target.dataValue = 256
    _check_arr = [0b0010_0010u8,0X01u8,0X00u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_UnsignedInteger,UInt32>(_test_Target,_check_arr)

    _test_Target.dataValue = 65535
    _check_arr = [0b0010_0010u8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_UnsignedInteger,UInt32>(_test_Target,_check_arr)

    _test_Target.dataValue = 16777215
    _check_arr = [0b0010_0011u8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_UnsignedInteger,UInt32>(_test_Target,_check_arr)

    _test_Target.dataValue = 4294967295
    _check_arr = [0b0010_0100u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_UnsignedInteger,UInt32>(_test_Target,_check_arr)

    //上下文报文用原语解码函数，应当报错
    _check_arr = [0b0010_1001u8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_UnsignedInteger>(_test_Target,_check_arr)

    //数字位数超4位，应当报错
    _check_arr = [0b0010_0101u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_UnsignedInteger>(_test_Target,_check_arr)

    //数字位数为0，应当报错
    _check_arr = [0b0010_0000u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_UnsignedInteger>(_test_Target,_check_arr)

    _test_Target.tagNumber = 9
    _test_Target.dataValue = 255
    _check_arr = [0b1001_1001u8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_UnsignedInteger,UInt32>(_test_Target,_check_arr,_context_decode)
  
    _test_Target.tagNumber = 66
    _test_Target.dataValue = 255
    _check_arr = [0b1111_1001u8,0X42u8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_UnsignedInteger,UInt32>(_test_Target,_check_arr,_context_decode)
 

    _test_Target.tagNumber = 3
    _test_Target.dataValue = 65535
    _check_arr = [0b0011_1010u8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_UnsignedInteger,UInt32>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = 65535
    _check_arr = [0b1111_1010u8,0X42u8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_UnsignedInteger,UInt32>(_test_Target,_check_arr,_context_decode)
 
    _test_Target.tagNumber = 3
    _test_Target.dataValue = 16777215
    _check_arr = [0b0011_1011u8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_UnsignedInteger,UInt32>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = 16777215
    _check_arr = [0b1111_1011u8,0X42u8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_UnsignedInteger,UInt32>(_test_Target,_check_arr,_context_decode)


    _test_Target.tagNumber = 3
    _test_Target.dataValue = 4294967295
    _check_arr = [0b0011_1100u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_UnsignedInteger,UInt32>(_test_Target,_check_arr,_context_decode)
    
    _test_Target.tagNumber = 66
    _test_Target.dataValue = 4294967295
    _check_arr = [0b1111_1100u8,0X42u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_UnsignedInteger,UInt32>(_test_Target,_check_arr,_context_decode)

    //原语报文用上下文解码函数，应当报错
    _check_arr = [0b0011_0100u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_UnsignedInteger>(_test_Target,_check_arr)
    //长度超过4
    _check_arr = [0b0011_1101u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
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
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr)

    _test_Target.dataValue = 127
    _check_arr = [0b0011_0001u8,0X7Fu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr)

    _test_Target.dataValue = -32768
    _check_arr = [0b0011_0010u8,0X80u8,0X00u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr)

    _test_Target.dataValue = 32767
    _check_arr = [0b0011_0010u8,0X7Fu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr)

    _test_Target.dataValue = -8388608
    _check_arr = [0b0011_0011u8,0X80u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr)

    _test_Target.dataValue = 8388607
    _check_arr = [0b0011_0011u8,0X7Fu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr)

    _test_Target.dataValue = -2147483648
    _check_arr = [0b0011_0100u8,0X80u8,0X00u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr)

    _test_Target.dataValue = 2147483647
    _check_arr = [0b0011_0100u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr)

    //上下文报文用原语解码函数，应当报错
    _check_arr = [0b0011_1100u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_SignedInteger>(_test_Target,_check_arr)

    //数字位数超4位，应当报错
    _check_arr = [0b0011_0101u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_SignedInteger>(_test_Target,_check_arr)

    //数字位数为0，应当报错
    _check_arr = [0b0011_0000u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToPrimitiveData_Erros<BACnet_SignedInteger>(_test_Target,_check_arr)

    //<<----------------------------------->>
    _test_Target.tagNumber = 8
    _test_Target.dataValue = -128
    _check_arr = [0b1000_1001u8,0X80u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = -128
    _check_arr = [0b1111_1001u8,0X42u8,0X80u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 8
    _test_Target.dataValue = 127
    _check_arr = [0b1000_1001u8,0X7Fu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = 127
    _check_arr = [0b1111_1001u8,0X42u8,0X7Fu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr,_context_decode)


    _test_Target.tagNumber = 8
    _test_Target.dataValue = -32768
    _check_arr = [0b1000_1010u8,0X80u8,0X00u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = -32768
    _check_arr = [0b1111_1010u8,0X42u8,0X80u8,0X00u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 8
    _test_Target.dataValue = 32767
    _check_arr = [0b1000_1010u8,0X7Fu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = 32767
    _check_arr = [0b1111_1010u8,0X42u8,0X7Fu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr,_context_decode)


    _test_Target.tagNumber = 8
    _test_Target.dataValue = -8388608
    _check_arr = [0b1000_1011u8,0X80u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 66
    _test_Target.dataValue = -8388608
    _check_arr = [0b1111_1011u8,0X42u8,0X80u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr,_context_decode)


    _test_Target.tagNumber = 8
    _test_Target.dataValue = 8388607
    _check_arr = [0b1000_1011u8,0X7Fu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 8
    _test_Target.dataValue = -2147483648
    _check_arr = [0b1000_1100u8,0X80u8,0X00u8,0X00u8,0X00u8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr,_context_decode)

    _test_Target.tagNumber = 8
    _test_Target.dataValue = 2147483647
    _check_arr = [0b1000_1100u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_RightThings<BACnet_SignedInteger,Int32>(_test_Target,_check_arr,_context_decode)

    //原语报文用上下文解码函数，应当报错
    _check_arr = [0b0011_0100u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8]
    test_BACnetApplicationDatatypes_ToContextSpecificData_Erros<BACnet_SignedInteger>(_test_Target,_check_arr)
    //长度超过4
    _check_arr = [0b0011_1101u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
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

    