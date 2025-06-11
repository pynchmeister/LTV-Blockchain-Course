// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract Whitelist {
    mapping(address => bool) public isWhitelisted;

    function addToWhitelist(address _addr) public {
        isWhitelisted[_addr] = true;
    }

    function checkWhitelist(address _addr) public view returns (bool) {
        return isWhitelisted[_addr];
    }

    

}