// SPDX-License-Identifier: MIT
 pragma solidity ^0.8.14;


contract mapp{
    // mapping address to a value
    mapping(address=>uint) balance;
    
    //function to send eth to sc
    function pay()public payable{
        //add the value sent to the uint mapped by balance
        balance[msg.sender]+=msg.value;
    }
//shows the balance in sc
function getbalance () public view returns (uint) {
    return address(this).balance;
}
//withdrawal
        function withdraw(address payable payableto) public {
            //new local variable to hold the balance of the sender address
            uint balancemain = balance[msg.sender];
            //return the value of the sender address to 0 to secure
               balance[msg.sender]=0;
               //transfer from sc to the sender address
                payableto.transfer(balancemain);
        }


}
