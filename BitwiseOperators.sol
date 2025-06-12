// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract BitwiseOperators {
    // 5 in binary  = 00000101
    // 3 in binary = 00000011

    /*
    
    &, AND, Only keeps bits that are 1 in both
    */

    // uint8 a = 5;            // 00000101
    // uint8 b = 3;            // 00000011

    // uint8 result = a & b;  //     0000001 = 1

    // | OR, Only keeps bits that are 1 in either

    // uint8 a = 5;            // 00000101
    // uint8 b = 3;            // 00000011

    // uint8 result = a | b;   // 00000111 = 7

    // ^ XOR, Keeps bits that are 1 in one but not both
    // uint8 a = 5;            // 00000101
    // uint8 b = 3;            // 00000011

    // uint8 result = a ^ b;   //     00000110 = 6

    // ~ NOT, Flips all bits (1 becomes 0 and vice versa)

    // uint8 a = 5;            // 00000101

    // uint8 result = ~a;      // 11111010 = 246

    // << Left Shift, Moves bits to the left (multiplies by 2)

    // uint8 a = 5;            // 00000101

    // uint8 result = a << 1;  // 00001010 = 10

    // >> Right Shift, Moves bits to the right (divides by 2)

    uint8 a = 5;            // 00000101

    uint8 result = a >> 1;  // 00000010 = 2


}
