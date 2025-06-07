// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract HelloBlockchain{
    /*declares the public state variable 'message'; 
    solidity automatically creates getter function in background because of "public" visibility
    therefore no need to type getMessage() function
    public visibility also makes accessible to call by any user or other contract*/
    string public message;

    //declares the private state variable 'owner' and its accessible only within this contract 
    address private owner;

    //declares custom error NotOwner as revert; saves gas
    error NotOwner(address caller);

    /*constructor function runs at deployment 
    and utilizes temporary nature of memory to set deployer as 'owner' and write the '_initial Message'*/
    constructor(string memory _initialMessage) {
        owner = msg.sender;
        message = _initialMessage;
    }
    /*function updates 'Message' using calldata; calldata acts similar to memory 
    calldata allows passing input data to a function as paramaters*/
    function updateMessage(string calldata newMessage) external {
        if (msg.sender != owner){
            revert NotOwner(msg.sender);
            /*"require(msg.sender == owner);" 
            also works instead of if loop to restrict deployment to owner, 
            but yields generic error and costs more gas 
            and we need custom error*/
        }
        // Overwrites the current 'message' with the new one; this writes to storage and costs gas.
        message = newMessage;
        
    }
     
}

     
