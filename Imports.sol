// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Strings.sol";

import "./Mathlib.sol";

contract MyContract {

    function square(uint a) public pure returns (uint) {
        return Mathlib.square(a);
    }

}