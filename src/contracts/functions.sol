pragma solidity ^0.8.26;

type Currency is address;
using {equals}  for Currency global;
function  equals(Currency tokenA, Currency tokenB) pure returns (bool){
    return Currency.unwrap(tokenA) == Currency.unwrap(tokenB);
}

function greaterThanZero(uint _amount)  pure returns (bool){

   
}