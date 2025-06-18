// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract MessageBoard{

    address public owner;

    error NotOwner(address caller);

    event MessagePosted(address indexed user, string message);

    event MessageDeleted(address indexed user);

    constructor(){
        owner = msg.sender;
    }

    mapping(address => string) private message;

    function postMessage(string calldata _message) public{
        message[msg.sender] = _message;
        emit MessagePosted(msg.sender, _message);
    }

    function getMyMessage() public view returns (string memory) {
        return message[msg.sender];
    }

    function deleteMessage(address user) external{
        if (msg.sender != owner) {
            revert NotOwner(msg.sender);
        }
        delete message[user];
        emit MessageDeleted(user);
    }
        

}

