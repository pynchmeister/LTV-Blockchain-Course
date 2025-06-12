// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract Store {
    // Basic Example: Storing a value

    uint public stored;

    function set(uint x) public {
        assembly {
            sstore(0,x)     // Store x at slot 0
        }
    }
    function get() public view returns (uint) {
        assembly {
            y := sload(0)       // Load value from slot 0
        }
    }

    // Another example: Getting the caller
    function who() public view returns (address sender) {
        assembly { 
            sender := caller()
        }
    }

    // Useful opcodes in assembly
    /*
    add(x, y) => x + y
    sub(x, y) => x - y
    mul(x, y) => x * y
    div(x,y)  => x / y
    sstore(k, v)=> store value v at slot k
    sload(k)=>  load value at slot k
    caller() =>  returns the address of the caller of this function
    callvalue() => Return the amount of wei provided by the sender in the transaction
    */
    
}
