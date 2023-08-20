// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract UpdatedErrorHandling {

    uint public constant constantValue = 5;

    function checkNonZero(uint num) public pure {
        require(num != 0, "Input value must be non-zero");
    }

    function safeDivision(uint _numerator, uint _denominator) public pure returns (uint) {
        require(_denominator != 0, "Denominator cannot be zero");
        require(_numerator >= _denominator, "Numerator must be greater than or equal to denominator");
        uint result = _numerator / _denominator;
        return result;
    }

    function multiplyWithConstant(uint a) public view returns (uint) {
        require(a > 0, "Input value must be greater than zero");
        uint result = a * constantValue;
        return result;
    }

    function updateConstantValue(uint newValue) public {
        require(newValue > 0, "New constant value must be greater than zero");
        constantValue = newValue;
    }
}
