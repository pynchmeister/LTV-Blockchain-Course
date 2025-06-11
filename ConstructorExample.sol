// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract ConstructorExample {
    string public message;

    constructor(string memory _message) {
            message = _message;
    }
}