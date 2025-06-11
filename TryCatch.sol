// SPDX-License-Identifier:MIT

pragma solidity ^0.8.30;

interface Calculator {
    function divide(uint a, uint b) external returns (uint256);
}

contract SafeMathCaller {
    Calculator public calculator;

    constructor(address _calculator) {
        calculator = Calculator(_calculator);
    }

    function safeDivide(uint256 a, uint256 b) public returns (string memory, uint256) {
        try calculator.divide(a,b) returns (uint256 result) {
            return ("success", result);
        } catch Error(string memory reason) {
            return ("Revert with reason", 0);       // e.g. "Cannot divide by zero"
        }catch Panic(uint256 errorCode) {
            return ("Panic occured", errorCode);
        }catch (bytes memory) {
            return ("Low level error", 0);
        }
    }
}