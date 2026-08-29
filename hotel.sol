// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract hotel{
    enum status {vacant,occupied}
     status public aval;
    address payable public owner;
    constructor(){
        aval=status.vacant;
        owner=payable(msg.sender);
    }

    function book() payable public returns(string memory){
        require(aval==status.vacant,"no room available");
        owner.transfer(msg.value);
        aval=status.occupied;
        return "boomed";
    }
}