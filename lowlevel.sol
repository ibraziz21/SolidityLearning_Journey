// SPDX-License-Identifier: MIT
 pragma solidity ^0.8.15;


/*
in this project, we have 2 contracts. we try to call a function from contract 1, in 2 ways
the first way, is when we assume knowledge of contract One, hence declare the contract, then call its function
the 2nd way, we assume knowledge only of the function, not the contract itself.
for the second way, we use a low-level call to call the function 

*/
 contract One {
     uint public balance;
        function deposit() public payable {
                balance+=msg.value;
        }


 }
 contract Two {
    
     receive() external payable{
        
     }

     function SendTo(address Address) public  {
          //  One one = One(Address);
          bytes memory Style2 = abi.encodeWithSignature("deposit()");
            Address.call{value: 100, gas: 50000}(Style2);
            


     }


 }
