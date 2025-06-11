// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract Counter {

   function sendViaCall(address payable recipient) external {
    (bool sent, ) = recipient.call{value: 1 ether}("");
    require(sent, "Call failed");
   }
}