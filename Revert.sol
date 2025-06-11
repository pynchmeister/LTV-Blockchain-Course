// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

contract Revert {

    /*
    revert - manually exit with a message
    require - checks inputs, permissions, etc.
    assert - checks for internal errors or bugs

    */
    function withdraw(uint256 amount) public {
        if (amount > address(this).balance) {
            revert("Not enough balance in contract");
        }

        payable(msg.sender).transfer(amount);
    }

    // require(x > 0, "x must be positive);
}

contract OnlyOwner {
    address public owner;

    constructor() {
        owner = msg.sender;

    }

    function transferOwnership(address newOwner) public {
        require(msg.sender == owner, "Not Owner");

        owner = newOwner;

        // Assert invariant: owner should never be address(0)
        assert(owner != address(0));
    }
}