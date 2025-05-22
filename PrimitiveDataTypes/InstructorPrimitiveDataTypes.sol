// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Primitives {
    bool public boo = true;
    
    /*
    uint stands for unsigned integer
    different sizes available
    uint8 ranges from 0 to 2 ** 8 -1
    uint16 ranges from 0 to 2 ** 16 -1
    uint24 ranges from 0 to 2 ** 24 -1
    uint32 ranges from 0 to 2 ** 32 -1
    uint64 ranges from 0 to 2 ** 64 -1
    uint128 ranges from 0 to 2 ** 128 -1
    
    uint256 is a large unsigned integer, which can store up to 2 ** 256 -1
    */

    uint8 public u8 = 1;
    uint256 public u256 = 456;
    uint256 public u = 123; // uint is an alias for uint256

    /*
    Negative numbers are allowed for int types.
    Like uint different ranges are available
    
    int256 ranges from -2 ** 255 to 2 ** 255-1
    int128 ranges from -2 ** 127 to 2 ** 127
    */

    int8 public i8 = -1;
    int256 public i256 = 456;
    int256 public i = -123;  // int is the same as int256

    // minimum and maximum of int
    int256 public minInt = type(int256).min;
    int256 public maxInt = type(int256).max;
    
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // Default values
    // Unassigned variables have default values
    bool public defaultBoo;   // false
    uint256 public defaultUint; // 0 
    int256 public defaultInt;   // 0    
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
