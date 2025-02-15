pragma solidity ^0.8.26;

contract Storage{
    // Storage vairble
    uint160 firstValueInSlotZero = 20;
    uint64 secondValueInSlotZero = 5;
    // Mask the value  which is 160 bit ( 4 * 30) = 120
    // Represent it in the Hex format 
    uint160 constant internal MASK_FIRST_VALUE = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    uint160 constant internal FIRST_VALUE_OFFSET = 160;
    // Mask the value  which is 64 bit ( 4 * 16) 
    // Represent it in the Hex format 
    uint64 constant internal MASK_SECOND_VALUE = 0xFFFFFFFFFFFFF;
    uint64 constant internal SECOND_VALUE_OFFSET = 64;
   /**
    * @notice Retrive the first value in the first slot (0)
    * @return _firstSlotValue the value stored in the first 160 bits
    */
    function getFirstSlotValue()  view external returns(uint160  _firstSlotValue){
        assembly {
            _firstSlotValue := and(MASK_FIRST_VALUE, sload(0))
        }
    }
    /**
     * @notice Retrive the second value in the first slot (0)
     * @return _secondSlotValue The value stored at slot 0, stating at bit 64
     */

    function  getSeCondValue() view external returns(uint64 _secondSlotValue){
        assembly {
            _secondSlotValue := and(MASK_SECOND_VALUE, shr(FIRST_VALUE_OFFSET, sload(0)))
        }
    }
}