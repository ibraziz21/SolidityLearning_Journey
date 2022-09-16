// SPDX-License-Identifier: MIT
 pragma solidity ^0.8.14;

 contract Sample{

     string public myString = "Hello";

    // adding keyword payable on a function makes the function able to receive eth
     function setString (string memory _myString) public payable {
        //msg.value is the amount sent in the transaction
        if(msg.value==1000 gwei){
         myString=_myString;
     }  else 
            //the smart contract can send eth stored in it back to the sender with this line
        payable(msg.sender).transfer(msg.value);
     }
 }
