// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Constants {
    // styling convention is to uppercase constant variables
    // constants are variables that cannot be modified (set by the user)
    // constants are hard-coded and using them can save gas costs.
    address public constant MY_ADDRESS = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    uint256 public constant MY_UINT = 123;

}