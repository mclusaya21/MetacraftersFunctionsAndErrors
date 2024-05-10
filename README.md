# MetacraftersFunctionsAndErrors
This assessment demonstrates a smart contract that implements the require(), assert(), and revert() statements.

# Description
Solidity has numerous error-handling features. Runtime or compile-time errors are also possible. Runtime mistakes are more harder to detect and mostly arise during contract execution, whereas syntax problems are checked during compile time when Solidity is turned to byte code.
#Getting Started
To run this code go to https://remix.ethereum.org/. Create a new file (example FunctionsandErrors.sol) and paste the code below
// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.25;

contract FunctionsAndErrors {
    uint256 public totalAmount;
    
    constructor(uint256 _initialAmount) {
        require(_initialAmount > 0, "Initial amount must be greater than zero");
        totalAmount = _initialAmount;
    }
    
    function increaseAmount(uint256 _amount) public {
        uint256 newTotalAmount = totalAmount + _amount;
        require(newTotalAmount > totalAmount, "Overflow detected");
        totalAmount = newTotalAmount;
    }
    
    function assertExample(uint256 _value) public pure returns (uint256) {
        uint256 result = _value * 2;
        assert(result > _value);
        return result;
    }
    
    function revertExample(uint256 _value) public pure returns (uint256) {
        require(_value != 0, "Value cannot be zero");
        if (_value > 100) {
            revert("Value exceeds maximum limit");
        }
        return _value * 2;
    }
}

# Author
Lusaya, Maria Carmela J.
Email: 8210131@ntc.edu.ph
