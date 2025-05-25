public package BACnetCodec4cj
import BACnetCodec4cj.Types.BACnetApplicationDatatypes.*
main() :UInt64{
    let a = BACnetApplicationDatatypesChoice.BACnetObjectIdentifier.转换到UInt8()
    println(a)
    return 0
}