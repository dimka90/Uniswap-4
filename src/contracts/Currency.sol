pragma solidity ^0.8.26;

import {Currency} from "./functions.sol";
contract Pool {
    /**
     * @notice Creates a liquidity pool
     * @param tokenA Adrees of the first token
     * @param tokenB Address of the second token
     */
    function createLiquidity(Currency tokenA, Currency tokenB) external pure{
        if (tokenA.equals(tokenB)) {
            revert("Token can't be thesame address");
        }
    }
}
