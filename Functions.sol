// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract Functions {
    // functions can return multiple values
    function returnMany() public pure returns (uint256, bool, uint256) {
        return (1, true, 2);
    }

    // return values can be named
    function named() public pure returns (uint256 x, bool b, uint256 y) {
        return (1, true, 2);
    }

    // Return values can be assigned to their name
    // In this case the return statement can be omitted
    function assigned() public pure returns (uint256 x, bool b, uint256 y) {
        x = 1;
        b = true;
        y = 2;
    }
}