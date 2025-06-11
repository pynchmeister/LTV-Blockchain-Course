// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract ForWhileLoops {
    // while (condition) {
    //   // code to run as long as the condition is true
    // }

    function countdown() public pure returns (uint256) {
      uint256 result = 0;
      uint256 i = 5;

      while (i > 0) {
        result += i;
        i--;
      }

      return result;  // returns 15 (5 +4+3+2+1)
    }
    }

