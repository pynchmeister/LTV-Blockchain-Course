// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Immutable {
    // styling convention to uppercase immutable variables
    /*
    Immutable variables are like constants
    Values of immutable variables can be set inside the 
    contructor but cannot be modified afterwards
    */
    address public immutable MY_ADDRESS;
    uint256 public immutable MY_UINT;

    constructor(uint256 _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}