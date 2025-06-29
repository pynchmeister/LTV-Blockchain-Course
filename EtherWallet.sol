// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract EtherWallet {
    // An example of a basic wallet
    // Anyone can send ETH
    // Only the owner can withdraw

    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint256 _amount) external {
        require(msg.sender == owner, "caller is not owner");
        payable(msg.sender).transfer(_amount);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
