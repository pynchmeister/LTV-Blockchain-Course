// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract Hashing {
    function getHash() public pure returns (bytes32) {
        return keccak256(abi.encode("hello world"));
    }