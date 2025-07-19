# BACnetCodec
BACnet通讯协议的编码解码库。
BACnet是楼宇自控、HVAC设备领域的重要ISO标准通讯协议，在楼宇自动行业有着极高的使用率。
目前本项目还在制作当中。
当前进展有：
1.建立了confirmedService下的多个枚举类
2.建立了UnConfirmedService下的多个枚举类
2.建立了BACnet用户数据（BACnetApplicationDatatypes）里的
    Null
    Boolean
    UnsignedInteger
    SignedInteger
    Real
    Double
    这几种格式的编解码函数，已可用，并建立了测试用例
4.建立了字节缓冲类，并建立了测试用例
5.建立了报错类