package BACnetCodec4cj.BACnet


public enum BACnet_ApplicationDataTypes_Choice  {
    //20.2.1.4 Application Tags 
    //The Tag Number field of an encoded BACnet application tag shall specify the application datatype as follows: 
    | Null(BACnet_Null) //0
    | Boolean(BACnet_Boolean) //1 
    | UnsignedInteger(BACnet_UnsignedInteger) //2 
    | SignedInteger(BACnet_SignedInteger) //3 (2's complement notation) 
    | Real(BACnet_Real) //4 (ANSI/IEEE-754 floating point) 
    | Double(BACnet_Double) //5 (ANSI/IEEE-754 double precision floating point) 
    | OctetString(BACnet_OctetString) //6 
    | CharacterString(BACnet_CharacterString) //7 
    | BitString(BACnet_BitString) //8 
    | Enumerated(BACnet_Enumerated) //9 
    | Date(BACnet_Date) //10 
    | Time(BACnet_OctetString) //11 
    | BACnetObjectIdentifier(BACnet_ObjectIdentifier) //12  
}

/*
20.2.1.4 Application Tags 
The Tag Number field of an encoded BACnet application tag shall specify the application datatype as follows: 
Tag Number: 
    0 = Null 
    1 = Boolean 
    2 = Unsigned Integer
    3 = Signed Integer (2's complement notation) 
    4 = Real (ANSI/IEEE-754 floating point) 
    5 = Double (ANSI/IEEE-754 double precision floating point) 
    6 = Octet String 
    7 = Character String 
    8 = Bit String 
    9 = Enumerated 
    10 = Date 
    11 = Time 
    12 = BACnetObjectIdentifier 
    13, 14, 15 = Reserved for ASHRAE
*/

/*协议原文，
--ISO_16484_5_2022_Page_891
--21.5 Application Types 

-- The following productions are the definitions of the Application datatypes. 
-- See Clause 20.2.1.4. 

-- NULL [APPLICATION 0], equivalent to [UNIVERSAL 5] 

-- BOOLEAN [APPLICATION 1], equivalent to [UNIVERSAL 1] 
 
Unsigned ::= [APPLICATION 2] INTEGER (0..MAX) 
 
Unsigned8 ::= Unsigned (0..255) 
 
Unsigned16 ::= Unsigned (0..65535) 
 
Unsigned32 ::= Unsigned (0..4294967295) 
 
Unsigned64 ::= Unsigned (0.. 18446744073709551615) -- 0 .. 'the 64th power of two'-1 

 -- INTEGER [APPLICATION 3], equivalent to [UNIVERSAL 2] 
 
INTEGER16 ::= INTEGER (-32768..32767) 
 
 -- REAL [APPLICATION 4], equivalent to [UNIVERSAL 9] ANSI/IEEE-754 single precision floating point 
 
Double ::=  [APPLICATION 5] OCTET STRING (SIZE(8)) -- ANSI/IEEE-754 double precision floating point 
 
 -- OCTET STRING [APPLICATION 6], equivalent to [UNIVERSAL 4] 
 
CharacterString ::=  [APPLICATION 7] OCTET STRING -- see Clause 20.2.9 for supported types 
 
 -- BIT STRING [APPLICATION 8], equivalent to [UNIVERSAL 3] 
 
 -- ENUMERATED [APPLICATION 9], equivalent to [UNIVERSAL 10] 
 
Date ::= [APPLICATION 10] OCTET STRING (SIZE(4)) -- see Clause 20.2.12 
-- first octet year minus 1900,  X'FF' = unspecified 
-- second octet month  (1.. 14), 	1   = January 
--      				13 = odd months 
--      				14 = even months 
--      				X'FF' = unspecified 
-- third octet day of month  (1..34), 	32 = last day of month 
--      				33 = odd days of month 
--      				34 = even days of month 
--      				X'FF' = unspecified 
-- fourth octet day of week  (1..7) 	1 = Monday 
--      				7 = Sunday 
--      				X'FF' = unspecified 
 
Time ::= [APPLICATION 11] OCTET STRING (SIZE(4)) -- see Clause 20.2.13 
-- first octet hour  (0..23), X'FF' = unspecified 
-- second octet minute  (0..59), X'FF' = unspecified 
-- third octet second  (0..59), X'FF' = unspecified 
-- fourth octet hundredths (0..99) X'FF' = unspecified 
 
BACnetObjectIdentifier ::= [APPLICATION 12] OCTET STRING (SIZE(4)) -- see Clause 20.2.14 
 
*/