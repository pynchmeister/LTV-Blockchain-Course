// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract IfElseExample {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function doSomething() public view returns (string memory) {
        if (msg.sender == owner) {
            return "You are the owner";
        } else {
            return "Access denied";
        }
    } 
    

}