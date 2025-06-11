// SPDX-License,Identifier: MIT

pragma solidity ^0.8.30;

contract GasOptimization {

    uint256 public total;


    // function sumIfEvenAndLessThan99(uint[] memory nums) external {
    //     for (uint i = 0; i < nums.length; i+=1) {
    //         bool isEven = nums[i] % 2 == 0;
    //         bool isLessThan99 = nums[i] < 99;
    //         if (isEven && isLessThan99) {
    //             total +=nums[i];
    //         }
    //     }
    // }
// start -50908 gas
// use calldata - 49163 gas
// load state variables to memory - 48952 gas
// short circuit -
//
     function sumIfEvenAndLessThan99(uint[] calldata nums) external {

        uint256 _total = total;
        uint len = nums.length;
        for (uint i = 0; i < len;) {
            uint256 num = nums[i];
            if (num % 2 ==0 && num <99) {
                _total += num;
            }
            unchecked {
                ++i;
            }
        }
            total = _total;

    }
}