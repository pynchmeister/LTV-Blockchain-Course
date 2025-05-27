// SPDX-License-Identifier: GPL-3.0 

// version below
pragma solidity ^0.8.30;
// at the end of each line of code their must be a semi colon ';'
contract HelloWorld {
    string public message = "Hello World"; 
    // string command holds text
    function setMessage(string memory newMessage) public {
        message = newMessage;
        //this is an assignment statement
        /*if (address(this).balance > 0){
            address(msg.sender).transfer(address(this).balance); 
            /*send money from user to contract, 
            msg.sender is the address that initiated this function call 
            and it is an address of the current sender  (you), 
            msg.data is a hexadecimal string representation of a function 
            called with the arguments in its data field*/
        }
    }

