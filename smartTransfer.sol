// SPDX-License-Identifier: MIT
 pragma solidity ^0.8.14;

 contract SmartMoney{
//declaration of variables, for comparison purposes we have initial and final variables
 uint public amount;
 uint public senderbal;
 uint public cabal;
uint public  finalcabal;
uint public senderbalfinal;

//receive() function to have eth sent to ca
receive() external payable{
     
     //updating the variables with new balances after receive()
    cabal=address(this).balance;
    senderbal=msg.sender.balance;
 }

//get amount to be withdrawn from ca to the sender
function getwithdrawalAmt(uint withdrawal) public {
        amount=withdrawal;

}
//withdrawal function
function withdraw()public payable {
    
        payable(msg.sender).transfer(amount); //send eth of amount specified to the sender address
       finalcabal = address(this).balance; //update ca balance final variable
        senderbalfinal = msg.sender.balance; //update sender final balance
}       




 }
