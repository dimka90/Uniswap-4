pragma solidity ^0.8.26;

contract Storage{
    // Storage vairble
    uint160 firstValueInSlotZero = 20;
    // Mask the value  which is 160 bit ( 4 * 30) = 120
    // Represent it in the Hex format 
    uint160 constant internal MASK_FIRST_VALUE = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
   
   /**
    * @notice Retrive the first value in the first slot (0)
    * @return _firstSlotValue the value stored in the first 160 bits
    */
    function getFirstSlotValue()  view external returns(uint160  _firstSlotValue){
        assembly {
            _firstSlotValue := and(MASK_FIRST_VALUE, sload(0))
        }
    }
}