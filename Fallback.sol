// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Fallback {
    string public lastCalled;

    fallback() external payable {
        lastCalled = "Fallback was called!";
        // Called when receiving ETH with data
    }

    receive() external payable{
        //called when recieveing ETH with no data
    }
}