// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Logic {
    uint public num;

    function setNum(uint _num) public {
        num = _num;
    }

}

contract Proxy {
    uint public num;

    function setNum(address _logicContract, uint _num) public {
        (bool success, ) = _logicContract.delegatecall(
            abi.encodeWithSignature("setNum(uint256", _num)
        );
        require(success, "delegatecall failed");
    }
}