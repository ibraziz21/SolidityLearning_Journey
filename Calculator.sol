//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract Calc{
        uint public num1;
        uint public num2;
      uint public sum;
      uint public diff;
      uint public mult;

    function setnum(uint num,uint num0) public {
        num1=num;
        num2=num0;
        
     
    }

    function getsum() public {
        sum = num1+num2;
    }

    function getdiff() public {
        if(num1>num2){
            diff=num1-num2;
        }else {
            diff = num2-num1;
        }
    }

}
