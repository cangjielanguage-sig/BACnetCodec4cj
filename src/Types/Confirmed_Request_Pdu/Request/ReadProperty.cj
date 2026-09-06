package BACnetCodec4cj.Types.Confirmed_Request_Pdu.Request

/*
ReadProperty-Request ::= SEQUENCE { 
 object-identifier [0] BACnetObjectIdentifier, 
 property-identifier [1] BACnetPropertyIdentifier, 
 property-array-index [2] Unsigned OPTIONAL -- used only with array datatype 
   -- if omitted with an array the entire array is referenced 
 } 
*/