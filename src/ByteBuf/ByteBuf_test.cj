package BACnetCodec4cj.ByteBuf
import std.convert.*
import std.unittest
import BACnetCodec4cj.BACnetException.*

@Test
func test_read_UInt8_FromBuf(){
    var arr1:Array<Byte> = [0x3e]
    let b_buf = ByteBuf(arr1, 1)
    var r_u8 = b_buf.read_UInt8_FromBuf()
    @Expect(r_u8,0x3e)
    @ExpectThrows[ByteBufErro](b_buf.read_UInt8_FromBuf())
}
@Test
func test_read_Float32_FromBuf(){
    var arr1:Array<Byte> = [0x42,0x05,0x57,0x8D]
    let b_buf = ByteBuf(arr1, 4)
    var r_U32 = b_buf.read_Float32_FromBuff()
    @Expect(r_U32,33.3355)
    @ExpectThrows[ByteBufErro](b_buf.read_Float32_FromBuff())
}

