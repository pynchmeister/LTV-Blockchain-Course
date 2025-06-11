// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Bytes {
    /*
    bytes - dynamically-sized byte array
    bytes1 to bytes32 - fixed size byte arrays 
    */

    // dynamic bytes below
    bytes public data;

    function storeData() public {
        data = "hello"; // stored as bytes: 0x68656c6c6f
    }

    // fixed-size bytes below
    bytes32 public hash;

    function storeHash() public {
        hash = keccak256(abi.encodePacked("data"));
    }

    // Example: Bytes vs string

    string public name = "Harris";
    bytes public nameInBytes = bytes(name);

    // name = "Harris"   (text form)
    // nameInBytes = 0x486172726973

    // convert string to bytes
    bytes public b = bytes("Welcome");

    bytes
    
    // acesss bytes like an array

    function getFIrstByte() public pure returns (bytes1) {
        bytes memory b = "Hello";
        return b[0];        // 0x48 (ASCII for 'H'
    }
    }