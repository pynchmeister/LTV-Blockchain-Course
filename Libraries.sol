// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

library MathLib {
    function double(uint x) internal pure returns (uint) {
        return x * 2;
    }
}

contract MyContract {
    using MathLib for uint;

    function example(uint val) public pure returns (uint) {
        return val.double();    // val is treated as uint, extended with double()
    }
}