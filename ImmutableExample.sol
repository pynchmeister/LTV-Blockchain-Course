// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract Token {
    uint256 public immutable maxSupply;

    constructor(uint256 _maxSupply) {
        maxSupply = _maxSupply;
    }
  
}