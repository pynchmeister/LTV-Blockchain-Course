// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract Secret {
    function hidden() private pure returns (string memory){
        return "Shh";
    }    

    function reveal() public pure returns (string memory) {
        return hidden();    // works
    }
}

contract Leaker is Secret {
    function leak() public pure returns (string memory) {
        return hidden();        // wont compile
    }
}