// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract DecoderExample {
    function example() public pure returns (string memory, uint) {
        bytes memory encoded = abi.encode("hello", 123);
        return abi.decode(encoded, (string, uint));
    }
}