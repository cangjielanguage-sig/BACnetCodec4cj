package BACnetCodec4cj.Types.BACnetApplicationDatatypes
import std.unittest
import BACnetCodec4cj.ByteBuf.*
import BACnetCodec4cj.BACnetException.*

@Test
func test_BACnet_Null(){
    var _test_BacnetNull = BACnet_Null()
    var _arr_test_1:Array<Byte> = [0b0000_0000]
    var _packet_test = ByteBuf(_arr_test_1,1)
    var _decode_value:BACnetApplicationDatatype = BACnet_Null.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is BACnet_Null,true)
    
    _arr_test_1 = [0b0001_0000]
    _packet_test = ByteBuf(_arr_test_1, 1)
    _decode_value = BACnet_Null.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is BACnet_Null,false)
    @Expect(_decode_value is BACnet_Boolean,true)
    var _decode_value_as = _decode_value as BACnet_Boolean
    var _decode_value_as_value = _decode_value_as.getOrThrow()
    @Expect(_decode_value_as_value.dataValue,false)
    
    _arr_test_1 = [0b0000_1000]
    _packet_test = ByteBuf(_arr_test_1, 1)
    @ExpectThrows[BACnetDecodeErro](BACnet_Null.decodingPrimitiveDataFromArrayByte(_packet_test))

    _arr_test_1 = [0b0000_0001]
    _packet_test = ByteBuf(_arr_test_1, 1)
    @ExpectThrows[BACnetDecodeErro](BACnet_Null.decodingPrimitiveDataFromArrayByte(_packet_test))
  
    
    _arr_test_1 = [0b1001_1000]
    _packet_test = ByteBuf(_arr_test_1, 1)
    _test_BacnetNull.decodingContextSpecificDataFromArrayByte(_packet_test)
    @Expect(_test_BacnetNull.tagNumber,9)

    _arr_test_1 = [0b1001_0000]
    _packet_test = ByteBuf(_arr_test_1, 1)
    @ExpectThrows[BACnetDecodeErro](_test_BacnetNull.decodingContextSpecificDataFromArrayByte(_packet_test))
    
    _arr_test_1 = [0b1001_1100]
    _packet_test = ByteBuf(_arr_test_1, 1)
    @ExpectThrows[BACnetDecodeErro](_test_BacnetNull.decodingContextSpecificDataFromArrayByte(_packet_test))
   
    
    _arr_test_1 = _test_BacnetNull.encodingToPrimitiveData()
    @Expect(_arr_test_1,[0b0000_0000u8])

    _test_BacnetNull.tagNumber = 8
    _arr_test_1 = _test_BacnetNull.encodingToContextSpecificData()
    @Expect(_arr_test_1,[0b1000_1000u8])
}

@Test
func test_BACnet_Boolean(){
    var _test_BacnetBoolean = BACnet_Boolean()
    var _arr_test_1:Array<Byte> = [0b0001_0000]
    var _packet_test = ByteBuf(_arr_test_1,1)
    var _decode_value:BACnetApplicationDatatype = BACnet_Boolean.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is BACnet_Boolean,true)
    var _decode_value_as = _decode_value as BACnet_Boolean
    var _decode_value_as_value = _decode_value_as.getOrThrow()
    @Expect(_decode_value_as_value.dataValue,false)

    _arr_test_1 = [0b0001_0001] 
    _packet_test = ByteBuf(_arr_test_1, 1)
    _decode_value = BACnet_Boolean.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is BACnet_Boolean,true)
    _decode_value_as = _decode_value as BACnet_Boolean
    _decode_value_as_value = _decode_value_as.getOrThrow()
    @Expect(_decode_value_as_value.dataValue,true)
    
    _arr_test_1 = [0b0001_1000]
    _packet_test = ByteBuf(_arr_test_1, 1)
    @ExpectThrows[BACnetDecodeErro](BACnet_Boolean.decodingPrimitiveDataFromArrayByte(_packet_test))

    _arr_test_1 = [0b0001_0101]
    _packet_test = ByteBuf(_arr_test_1, 1)
    @ExpectThrows[BACnetDecodeErro](BACnet_Boolean.decodingPrimitiveDataFromArrayByte(_packet_test))
  
    
    _arr_test_1 = [0b1001_1001,0b0000_0000]
    _packet_test = ByteBuf(_arr_test_1)
    _test_BacnetBoolean.decodingContextSpecificDataFromArrayByte(_packet_test)
    @Expect(_test_BacnetBoolean.tagNumber,9)
    @Expect(_test_BacnetBoolean.dataValue,false)

    _arr_test_1 = [0b0011_1001,0b0000_0001]
    _packet_test = ByteBuf(_arr_test_1)
    _test_BacnetBoolean.decodingContextSpecificDataFromArrayByte(_packet_test)
    @Expect(_test_BacnetBoolean.tagNumber,3)
    @Expect(_test_BacnetBoolean.dataValue,true)

    _arr_test_1 = [0b1001_0000]
    _packet_test = ByteBuf(_arr_test_1, 1)
    @ExpectThrows[BACnetDecodeErro](_test_BacnetBoolean.decodingContextSpecificDataFromArrayByte(_packet_test))
    
    _arr_test_1 = [0b1001_1100]
    _packet_test = ByteBuf(_arr_test_1, 1)
    @ExpectThrows[BACnetDecodeErro](_test_BacnetBoolean.decodingContextSpecificDataFromArrayByte(_packet_test))

    _arr_test_1 = [0b1001_1000,0b1001_1000]
    _packet_test = ByteBuf(_arr_test_1)
    @ExpectThrows[BACnetDecodeErro](_test_BacnetBoolean.decodingContextSpecificDataFromArrayByte(_packet_test))
   
    
    _test_BacnetBoolean.dataValue = false
    _arr_test_1 = _test_BacnetBoolean.encodingToPrimitiveData()
    @Expect(_arr_test_1,[0b0001_0000u8])

    _test_BacnetBoolean.dataValue = true
    _arr_test_1 = _test_BacnetBoolean.encodingToPrimitiveData()
    @Expect(_arr_test_1,[0b0001_0001u8])

    _test_BacnetBoolean.tagNumber = 9
    _test_BacnetBoolean.dataValue = false
    _arr_test_1 = _test_BacnetBoolean.encodingToContextSpecificData()
    @Expect(_arr_test_1,[0b1001_1001u8,0b0000_0000u8])

    _test_BacnetBoolean.dataValue = true
    _arr_test_1 = _test_BacnetBoolean.encodingToContextSpecificData()
    @Expect(_arr_test_1,[0b1001_1001u8,0b0000_0001u8])
}

@Test
func test_BACnet_UnsignedInteger(){
    var _test_UnsignedInteger = BACnet_UnsignedInteger()
    _test_UnsignedInteger.dataValue = 255
    var _arr_test_1:Array<Byte> = _test_UnsignedInteger.encodingToPrimitiveData()
    @Expect(_arr_test_1,[0b0010_0001u8,0XFFu8])

    var _packet_test = ByteBuf(_arr_test_1)
    var _decode_value:BACnetApplicationDatatype = BACnet_UnsignedInteger.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is BACnet_UnsignedInteger,true)
    var _decode_value_as = _decode_value as BACnet_UnsignedInteger
    var _decode_value_as_value = _decode_value_as.getOrThrow()
    @Expect(_decode_value_as_value.dataValue,255u32)
    @Expect(_packet_test.cursor,2i64)

    _test_UnsignedInteger.dataValue = 256
    _arr_test_1 = _test_UnsignedInteger.encodingToPrimitiveData()
    @Expect(_arr_test_1,[0b0010_0010u8,0X01u8,0X00u8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_value = BACnet_UnsignedInteger.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is BACnet_UnsignedInteger,true)
    _decode_value_as = _decode_value as BACnet_UnsignedInteger
    _decode_value_as_value = _decode_value_as.getOrThrow()
    @Expect(_decode_value_as_value.dataValue,256u32)
    @Expect(_packet_test.cursor,3i64)

    _test_UnsignedInteger.dataValue = 65535
    _arr_test_1 = _test_UnsignedInteger.encodingToPrimitiveData()
    @Expect(_arr_test_1,[0b0010_0010u8,0XFFu8,0XFFu8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_value = BACnet_UnsignedInteger.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is BACnet_UnsignedInteger,true)
    _decode_value_as = _decode_value as BACnet_UnsignedInteger
    _decode_value_as_value = _decode_value_as.getOrThrow()
    @Expect(_decode_value_as_value.dataValue,65535u32)
    @Expect(_packet_test.cursor,3i64)

    _test_UnsignedInteger.dataValue = 16777215
    _arr_test_1 = _test_UnsignedInteger.encodingToPrimitiveData()
    @Expect(_arr_test_1,[0b0010_0011u8,0XFFu8,0XFFu8,0XFFu8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_value = BACnet_UnsignedInteger.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is BACnet_UnsignedInteger,true)
    _decode_value_as = _decode_value as BACnet_UnsignedInteger
    _decode_value_as_value = _decode_value_as.getOrThrow()
    @Expect(_decode_value_as_value.dataValue,16777215u32)
    @Expect(_packet_test.cursor,4i64)

    _test_UnsignedInteger.dataValue = 4294967295
    _arr_test_1 = _test_UnsignedInteger.encodingToPrimitiveData()
    @Expect(_arr_test_1,[0b0010_0100u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_value = BACnet_UnsignedInteger.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is BACnet_UnsignedInteger,true)
    _decode_value_as = _decode_value as BACnet_UnsignedInteger
    _decode_value_as_value = _decode_value_as.getOrThrow()
    @Expect(_decode_value_as_value.dataValue,4294967295u32)
    @Expect(_packet_test.cursor,5i64)

    _arr_test_1=[0b0010_0101u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    _packet_test = ByteBuf(_arr_test_1)
    @ExpectThrows[BACnetDecodeErro](BACnet_UnsignedInteger.decodingPrimitiveDataFromArrayByte(_packet_test))

    _arr_test_1=[0b0010_0000u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    _packet_test = ByteBuf(_arr_test_1)
    @ExpectThrows[BACnetDecodeErro](BACnet_UnsignedInteger.decodingPrimitiveDataFromArrayByte(_packet_test))

    _arr_test_1=[0b0010_1001u8,0XFFu8]
    _packet_test = ByteBuf(_arr_test_1)
    @ExpectThrows[BACnetDecodeErro](BACnet_UnsignedInteger.decodingPrimitiveDataFromArrayByte(_packet_test))

    var _decode_UnsignedInteger:BACnet_UnsignedInteger = BACnet_UnsignedInteger()

    _test_UnsignedInteger.dataValue = 255
    _test_UnsignedInteger.tagNumber = 9
    _test_UnsignedInteger.tagClass = BACnetTagClassChoice.contextSpecificTag
    _test_UnsignedInteger.applicationDatatype = BACnetApplicationDatatypesChoice.UnsignedInteger
    _arr_test_1 = _test_UnsignedInteger.encodingToContextSpecificData()
    @Expect(_arr_test_1,[0b1001_1001u8,0XFFu8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_UnsignedInteger.decodingContextSpecificDataFromArrayByte(_packet_test)
    @Expect(_decode_UnsignedInteger.tagNumber,9u8)
    @Expect(_decode_UnsignedInteger.dataValue,255u32)
    @Expect(_packet_test.cursor,2i64)

    _test_UnsignedInteger.dataValue = 65535
    _test_UnsignedInteger.tagNumber = 3
    _arr_test_1 = _test_UnsignedInteger.encodingToContextSpecificData()
    @Expect(_arr_test_1,[0b0011_1010u8,0XFFu8,0XFFu8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_UnsignedInteger.decodingContextSpecificDataFromArrayByte(_packet_test)
    @Expect(_decode_UnsignedInteger.tagNumber,3u8)
    @Expect(_decode_UnsignedInteger.dataValue,65535u32)
    @Expect(_packet_test.cursor,3i64)

    _test_UnsignedInteger.dataValue = 16777215
    _test_UnsignedInteger.tagNumber = 3
    _arr_test_1 = _test_UnsignedInteger.encodingToContextSpecificData()
    @Expect(_arr_test_1,[0b0011_1011u8,0XFFu8,0XFFu8,0XFFu8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_UnsignedInteger.decodingContextSpecificDataFromArrayByte(_packet_test)
    @Expect(_decode_UnsignedInteger.tagNumber,3u8)
    @Expect(_decode_UnsignedInteger.dataValue,16777215u32)
    @Expect(_packet_test.cursor,4i64)

    _test_UnsignedInteger.dataValue = 4294967295
    _test_UnsignedInteger.tagNumber = 3
    _arr_test_1 = _test_UnsignedInteger.encodingToContextSpecificData()
    @Expect(_arr_test_1,[0b0011_1100u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_UnsignedInteger.decodingContextSpecificDataFromArrayByte(_packet_test)
    @Expect(_decode_UnsignedInteger.tagNumber,3u8)
    @Expect(_decode_UnsignedInteger.dataValue,4294967295u32)
    @Expect(_packet_test.cursor,5i64)

    _arr_test_1=[0b0011_0100u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    _packet_test = ByteBuf(_arr_test_1)
    @ExpectThrows[BACnetDecodeErro](_decode_UnsignedInteger.decodingContextSpecificDataFromArrayByte(_packet_test))

    _arr_test_1=[0b0011_1101u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    _packet_test = ByteBuf(_arr_test_1)
    @ExpectThrows[BACnetDecodeErro](_decode_UnsignedInteger.decodingContextSpecificDataFromArrayByte(_packet_test))

    _arr_test_1=[0b0011_1000u8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    _packet_test = ByteBuf(_arr_test_1)
    @ExpectThrows[BACnetDecodeErro](_decode_UnsignedInteger.decodingContextSpecificDataFromArrayByte(_packet_test))


}

@Test
func test_BACnet_SignedInteger(){
    var _test_SignedInteger = BACnet_SignedInteger()
    _test_SignedInteger.dataValue = -128
    var _arr_test_1:Array<Byte> = _test_SignedInteger.encodingToPrimitiveData()
    @Expect(_arr_test_1,[0b0011_0001u8,0X80u8])
    var _packet_test = ByteBuf(_arr_test_1)
    var _decode_value:BACnetApplicationDatatype = BACnet_SignedInteger.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is BACnet_SignedInteger,true)
    var _decode_value_as = _decode_value as BACnet_SignedInteger
    var _decode_value_as_value = _decode_value_as.getOrThrow()
    @Expect(_decode_value_as_value.dataValue,-128i32)
    @Expect(_packet_test.cursor,2i64)

    _test_SignedInteger.dataValue = 127
    _arr_test_1 = _test_SignedInteger.encodingToPrimitiveData()
    @Expect(_arr_test_1,[0b0011_0001u8,0X7Fu8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_value = BACnet_SignedInteger.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is BACnet_SignedInteger,true)
    _decode_value_as = _decode_value as BACnet_SignedInteger
    _decode_value_as_value = _decode_value_as.getOrThrow()
    @Expect(_decode_value_as_value.dataValue,127i32)
    @Expect(_packet_test.cursor,2i64)

    _test_SignedInteger.dataValue = -32768
    _arr_test_1 = _test_SignedInteger.encodingToPrimitiveData()
    @Expect(_arr_test_1,[0b0011_0010u8,0X80u8,0X00u8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_value = BACnet_SignedInteger.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is BACnet_SignedInteger,true)
    _decode_value_as = _decode_value as BACnet_SignedInteger
    _decode_value_as_value = _decode_value_as.getOrThrow()
    @Expect(_decode_value_as_value.dataValue,-32768i32)
    @Expect(_packet_test.cursor,3i64)

    _test_SignedInteger.dataValue = 32767
    _arr_test_1 = _test_SignedInteger.encodingToPrimitiveData()
    @Expect(_arr_test_1,[0b0011_0010u8,0X7Fu8,0XFFu8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_value = BACnet_SignedInteger.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is BACnet_SignedInteger,true)
    _decode_value_as = _decode_value as BACnet_SignedInteger
    _decode_value_as_value = _decode_value_as.getOrThrow()
    @Expect(_decode_value_as_value.dataValue,32767i32)
    @Expect(_packet_test.cursor,3i64)

    _test_SignedInteger.dataValue = -8388608
    _arr_test_1 = _test_SignedInteger.encodingToPrimitiveData()
    @Expect(_arr_test_1,[0b0011_0011u8,0X80u8,0X00u8,0X00u8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_value = BACnet_SignedInteger.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is BACnet_SignedInteger,true)
    _decode_value_as = _decode_value as BACnet_SignedInteger
    _decode_value_as_value = _decode_value_as.getOrThrow()
    @Expect(_decode_value_as_value.dataValue,-8388608i32)
    @Expect(_packet_test.cursor,4i64)

    _test_SignedInteger.dataValue = 8388607
    _arr_test_1 = _test_SignedInteger.encodingToPrimitiveData()
    @Expect(_arr_test_1,[0b0011_0011u8,0X7Fu8,0XFFu8,0XFFu8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_value = BACnet_SignedInteger.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is BACnet_SignedInteger,true)
    _decode_value_as = _decode_value as BACnet_SignedInteger
    _decode_value_as_value = _decode_value_as.getOrThrow()
    @Expect(_decode_value_as_value.dataValue,8388607i32)
    @Expect(_packet_test.cursor,4i64)

    _test_SignedInteger.dataValue = -2147483648
    _arr_test_1 = _test_SignedInteger.encodingToPrimitiveData()
    @Expect(_arr_test_1,[0b0011_0100u8,0X80u8,0X00u8,0X00u8,0X00u8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_value = BACnet_SignedInteger.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is BACnet_SignedInteger,true)
    _decode_value_as = _decode_value as BACnet_SignedInteger
    _decode_value_as_value = _decode_value_as.getOrThrow()
    @Expect(_decode_value_as_value.dataValue,-2147483648i32)
    @Expect(_packet_test.cursor,5i64)

    _test_SignedInteger.dataValue = 2147483647
    _arr_test_1 = _test_SignedInteger.encodingToPrimitiveData()
    @Expect(_arr_test_1,[0b0011_0100u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_value = BACnet_SignedInteger.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is BACnet_SignedInteger,true)
    _decode_value_as = _decode_value as BACnet_SignedInteger
    _decode_value_as_value = _decode_value_as.getOrThrow()
    @Expect(_decode_value_as_value.dataValue,2147483647i32)
    @Expect(_packet_test.cursor,5i64)

    _arr_test_1 = [0b0011_1100u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8]
    _packet_test = ByteBuf(_arr_test_1)
    @ExpectThrows[BACnetDecodeErro](BACnet_SignedInteger.decodingPrimitiveDataFromArrayByte(_packet_test))

    _arr_test_1 = [0b0011_0101u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    _packet_test = ByteBuf(_arr_test_1)
    @ExpectThrows[BACnetDecodeErro](BACnet_SignedInteger.decodingPrimitiveDataFromArrayByte(_packet_test))

    _arr_test_1 = [0b0011_0000u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    _packet_test = ByteBuf(_arr_test_1)
    @ExpectThrows[BACnetDecodeErro](BACnet_SignedInteger.decodingPrimitiveDataFromArrayByte(_packet_test))

    //<<----------------------------------->>
    var _decode_SignedInteger = BACnet_SignedInteger()

    _test_SignedInteger.tagNumber = 8
    _test_SignedInteger.dataValue = -128
    _arr_test_1 = _test_SignedInteger.encodingToContextSpecificData()
    @Expect(_arr_test_1,[0b1000_1001u8,0X80u8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_SignedInteger.decodingContextSpecificDataFromArrayByte(_packet_test)
    @Expect(_decode_SignedInteger.dataValue,-128i32)
    @Expect(_packet_test.cursor,2i64)

    _test_SignedInteger.tagNumber = 8
    _test_SignedInteger.dataValue = 127
    _arr_test_1 = _test_SignedInteger.encodingToContextSpecificData()
    @Expect(_arr_test_1,[0b1000_1001u8,0X7Fu8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_SignedInteger.decodingContextSpecificDataFromArrayByte(_packet_test)
    @Expect(_decode_SignedInteger.dataValue,127i32)
    @Expect(_packet_test.cursor,2i64)

    _test_SignedInteger.tagNumber = 8
    _test_SignedInteger.dataValue = -32768
    _arr_test_1 = _test_SignedInteger.encodingToContextSpecificData()
    @Expect(_arr_test_1,[0b1000_1010u8,0X80u8,0X00u8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_SignedInteger.decodingContextSpecificDataFromArrayByte(_packet_test)
    @Expect(_decode_SignedInteger.dataValue,-32768i32)
    @Expect(_packet_test.cursor,3i64)

    _test_SignedInteger.tagNumber = 8
    _test_SignedInteger.dataValue = 32767
    _arr_test_1 = _test_SignedInteger.encodingToContextSpecificData()
    @Expect(_arr_test_1,[0b1000_1010u8,0X7Fu8,0XFFu8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_SignedInteger.decodingContextSpecificDataFromArrayByte(_packet_test)
    @Expect(_decode_SignedInteger.dataValue,32767i32)
    @Expect(_packet_test.cursor,3i64)

    _test_SignedInteger.tagNumber = 8
    _test_SignedInteger.dataValue = -8388608
    _arr_test_1 = _test_SignedInteger.encodingToContextSpecificData()
    @Expect(_arr_test_1,[0b1000_1011u8,0X80u8,0X00u8,0X00u8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_SignedInteger.decodingContextSpecificDataFromArrayByte(_packet_test)
    @Expect(_decode_SignedInteger.dataValue,-8388608i32)
    @Expect(_packet_test.cursor,4i64)

    _test_SignedInteger.tagNumber = 8
    _test_SignedInteger.dataValue = 8388607
    _arr_test_1 = _test_SignedInteger.encodingToContextSpecificData()
    @Expect(_arr_test_1,[0b1000_1011u8,0X7Fu8,0XFFu8,0XFFu8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_SignedInteger.decodingContextSpecificDataFromArrayByte(_packet_test)
    @Expect(_decode_SignedInteger.dataValue,8388607i32)
    @Expect(_packet_test.cursor,4i64)

    _test_SignedInteger.tagNumber = 8
    _test_SignedInteger.dataValue = -2147483648
    _arr_test_1 = _test_SignedInteger.encodingToContextSpecificData()
    @Expect(_arr_test_1,[0b1000_1100u8,0X80u8,0X00u8,0X00u8,0X00u8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_SignedInteger.decodingContextSpecificDataFromArrayByte(_packet_test)
    @Expect(_decode_SignedInteger.dataValue,-2147483648)
    @Expect(_packet_test.cursor,5i64)

    _test_SignedInteger.tagNumber = 8
    _test_SignedInteger.dataValue = 2147483647
    _arr_test_1 = _test_SignedInteger.encodingToContextSpecificData()
    @Expect(_arr_test_1,[0b1000_1100u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_SignedInteger.decodingContextSpecificDataFromArrayByte(_packet_test)
    @Expect(_decode_SignedInteger.dataValue,2147483647i32)
    @Expect(_packet_test.cursor,5i64)

    _arr_test_1 = [0b0011_0100u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8]
    _packet_test = ByteBuf(_arr_test_1)
    @ExpectThrows[BACnetDecodeErro](_decode_SignedInteger.decodingContextSpecificDataFromArrayByte(_packet_test))

    _arr_test_1 = [0b0011_1101u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    _packet_test = ByteBuf(_arr_test_1)
    @ExpectThrows[BACnetDecodeErro](_decode_SignedInteger.decodingContextSpecificDataFromArrayByte(_packet_test))

    _arr_test_1 = [0b0011_1000u8,0X7Fu8,0XFFu8,0XFFu8,0XFFu8,0XFFu8]
    _packet_test = ByteBuf(_arr_test_1)
    @ExpectThrows[BACnetDecodeErro](_decode_SignedInteger.decodingContextSpecificDataFromArrayByte(_packet_test))

}

@Test
func test_BACnet_Real(){
    var _test_Real = BACnet_Real()
    _test_Real.dataValue = -12.7
    var _arr_test_1:Array<Byte> = _test_Real.encodingToPrimitiveData()
    @Expect(_arr_test_1,[0b0100_0100u8,0XC1u8,0X4Bu8,0X33u8,0X33u8])
    var _packet_test = ByteBuf(_arr_test_1)
    var _decode_value:BACnetApplicationDatatype = BACnet_Real.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is BACnet_Real,true)
    var _decode_value_as = _decode_value as BACnet_Real
    var _decode_value_as_value = _decode_value_as.getOrThrow()
    @Expect(_decode_value_as_value.dataValue,-12.7f32)
    @Expect(_packet_test.cursor,5i64)

    _test_Real.dataValue = 0.0
    _arr_test_1 = _test_Real.encodingToPrimitiveData()
    @Expect(_arr_test_1,[0b0100_0100u8,0X00u8,0X00u8,0X00u8,0X00u8])
    _packet_test = ByteBuf(_arr_test_1)
    _decode_value = BACnet_Real.decodingPrimitiveDataFromArrayByte(_packet_test)
    @Expect(_decode_value is BACnet_Real,true)
    _decode_value_as = _decode_value as BACnet_Real
    _decode_value_as_value = _decode_value_as.getOrThrow()
    @Expect(_decode_value_as_value.dataValue,0.0f32)
    @Expect(_packet_test.cursor,5i64)

    _arr_test_1=[0b0100_1100u8,0X00u8,0X00u8,0X00u8,0X00u8]
    _packet_test = ByteBuf(_arr_test_1)
    @ExpectThrows[BACnetDecodeErro](BACnet_Real.decodingPrimitiveDataFromArrayByte(_packet_test))

    _arr_test_1=[0b0100_1001u8,0X00u8]
    _packet_test = ByteBuf(_arr_test_1)
    @ExpectThrows[BACnetDecodeErro](BACnet_Real.decodingPrimitiveDataFromArrayByte(_packet_test))

//<----------------------------------------->

    var _test_Real_Decode = BACnet_Real()
    _test_Real.dataValue = 0.0
    _test_Real.tagNumber = 8
    _arr_test_1 = _test_Real.encodingToContextSpecificData()
    @Expect(_arr_test_1,[0b1000_1100u8,0X00u8,0X00u8,0X00u8,0X00u8])
    _packet_test = ByteBuf(_arr_test_1)
    _test_Real_Decode.decodingContextSpecificDataFromArrayByte(_packet_test)
    @Expect(_test_Real_Decode.dataValue,0.0f32)
    @Expect(_packet_test.cursor,5i64)

    _test_Real.dataValue = -12.7
    _test_Real.tagNumber = 8
    _arr_test_1 = _test_Real.encodingToContextSpecificData()
    @Expect(_arr_test_1,[0b1000_1100u8,0XC1u8,0X4Bu8,0X33u8,0X33u8])
    _packet_test = ByteBuf(_arr_test_1)
    _test_Real_Decode.decodingContextSpecificDataFromArrayByte(_packet_test)
    @Expect(_test_Real_Decode.dataValue,-12.7f32)
    @Expect(_packet_test.cursor,5i64)

    _arr_test_1=[0b1000_0100u8,0XC1u8,0X4Bu8,0X33u8,0X33u8]
    _packet_test = ByteBuf(_arr_test_1)
    @ExpectThrows[BACnetDecodeErro](_test_Real_Decode.decodingContextSpecificDataFromArrayByte(_packet_test))

    _arr_test_1=[0b0100_1001u8,0X00u8]
    _packet_test = ByteBuf(_arr_test_1)
    @ExpectThrows[BACnetDecodeErro](_test_Real_Decode.decodingContextSpecificDataFromArrayByte(_packet_test))


}