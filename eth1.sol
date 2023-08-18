// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract FileHandling{
   
    // uint public num = 0;
    uint j=5;

    function testAssert(uint num) public pure{
        assert(num!=0);
    }

    function divide(uint _numerator, uint _denomenator) public pure returns (uint){
        if(_numerator<_denomenator){
           
            revert("please provide numerator greater than denomenator");
            
        }
        return _numerator/_denomenator;
       

    }
    function mult(uint k) public view returns (uint){
        require(k>0,"Value of k is zero , we don't want the result to be zero");
        return j*k;

    }

}
