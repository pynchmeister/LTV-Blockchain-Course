// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

// define a base (parent) contract
contract A {
    function foo() public pure returns (string memory) {
        return "A";
    }
}

contract B {
    function bar() public pure returns (string memory) {
        return "B";
    }
}

contract C is A, B{}