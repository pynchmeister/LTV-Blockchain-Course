// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract UncheckedMath {
    // Overflow & Underflow (What Solidity tries to prevent)
    // uint8 x = 255;
    // x += 1;     // Error: overflow

    // uint8 y = 0;
    // y -= 1;     // Error: underflow

    // What does unchecked do?
    // If you are certain that the value cannot overflow or underflow, it’s a good practice to use unchecked. When using this keyword for calculations where there is no way to detect the overflow/underflow in Solidity (e.g., math operations or arithmetic operations), it will prevent them from being evaluated as normal numbers and instead return an error
    // uint8 x = 255;
    // unchecked {
    //     x += 1;      // No error. x becomes 0 due to overflow
    // }

    // Common in loops where overflow cant happen

    // for (uint i = 0; i < 100; ) {
    //     // gas optimized loop
    //     unchecked { i++; }
    // }


    // Comparison example

    function normalAdd(uint8 x) public pure returns (uint8) {
        return x + 1;       // reverts if x is 255
    }

    function uncheckedAdd(uint8 x) public pure returns (uint8) {
        unchecked {
            return x + 1;       // Returns 0 if x is 255
        }
    }
    }
