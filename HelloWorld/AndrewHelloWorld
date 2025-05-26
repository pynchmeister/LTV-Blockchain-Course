// version below
pragma solidity ^0.8.30;
//define contract or name your contract
/* This is a multline statement 
It is useful*/ 
/**/ 
contract HelloClass{
    // string is text that can be recalled later
    // the message is associated with it's text
    string message = "Hello Class";
    string alphabet = "ABCDEFGHIJKLMN";
    string color = "Red"
    string myMessage = "I'm learning about how to write contracts in Solidiy";
// internal is a message only view with in the contract
    string internal message = "Hello Class";
    string public message = "String public is a message anyone can view";
    function setMessage(string memory newMessage) public {
        message = newMessage;//this is an assignment statement
        //solidity automatically sets the type of this variable to string so it won't be able to store other data types in a variable. 
            if(address(this).balance > 0) {
                address(msg.sender).transfer(address(this).balance);//send money from user to contract, msg.sender is the address that initiated this function call and it is an address of the current sender (you), msg.data is a hexadecimal string representation of a function called with the arguments in its data field
            }
    }
