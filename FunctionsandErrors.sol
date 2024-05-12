// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.25;

contract FunctionsAndErrors {
   
   function requireNum(uint256 _num) public pure returns(uint256){

    uint256 minValue = 1;
    require(_num > minValue, "Number must be greater than 1");
    return _num;
   }

   function assertNum(uint256 _num) public pure returns(uint256) {

    uint256 valueIncrease = 5;
    uint256 result = _num + valueIncrease;
    assert(result > _num);
    return result;
   }

   function revertError() public pure {
    string memory errorMessage = "This transaction has been reverted.";
    revert(errorMessage);

   }

}
