// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract ForWhileLoops {
    function loop() public pure {
        // For loop
        // for(start; condition; step- either incrementing or decrementing)
        for (uint256 i = 0; i < 10; i++) {
            if (i == 3) {
                // Skip to the next iteration with continue
                continue;
            }
            if (i == 5) {
                // Exit loop with break
                break;
            }
          }

          // while loop
          uint256 j;    // since it's unassigned it starts at a value of 0
          while(j < 10) {
            j++;
          }
        }
    }
