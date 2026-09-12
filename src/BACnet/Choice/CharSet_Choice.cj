public package BACnetCodec4cj.BACnet.Choice

//BACnet支持的CharacterString编码库类型
public enum CharSet_Choice {
    | UTF_8 //X'00' ISO 10646 (UTF-8)   仓颉默认
    | CodePage(UInt16) //X'01' IBM/Microsoft DBCS  一般不建议使用，因为内码种类太多，支持不全。UInt16值为指定内码页号即_codePageNum，在charset4cj貌似可以通过Charsets.forName("cp"+_codePageNum.toString())获得，如果没有则会使用UTF_8代替
    | JISX0208 //X'02' JIS X 0208          在charset4cj中使用Charsets.ISO_2022_JP，不知道准不准，也没测试手段
    | UTF_32 //X'03' ISO 10646 (UCS-4)   在charset4cj中使用Charsets.UTF32BE，BE指代大端序（Big-Endian）
    | UTF_16 //X'04' ISO 10646 (UCS-2)   在charset4cj中使用Charsets.UTF16BE
    | ISO_8859_1 //X'05' ISO 8859-1          在charset4cj中使用Charsets.WINDOWS_1252
}