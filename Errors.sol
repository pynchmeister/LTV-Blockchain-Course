// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Errors {
   error InsufficientPayment(uint256 sent, uint256 required);

   function buySnack() external payable {
        uint256 price = 1 ether;
        if (msg.value < price) {
            revert InsufficientPayment(msg.value, price);
        }
   }
}