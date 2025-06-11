// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract Constructors {
    address public admin;

    constructor(address _admin) {
        admin = _admin;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin,"Not admin");
        _;
    }

    function shutdownSystem() public onlyAdmin {
        // shut it down
    }
}