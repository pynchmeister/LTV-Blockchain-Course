// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Modifiers {
    function secureAction() public onlyOwner whenNotPaused {
        //critical action
    }

}