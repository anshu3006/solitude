// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract hotel{
    event stat(address who,uint msg);
    enum status {vacant,occupied}
     status public aval;
    address payable public owner;
    constructor(){
        aval=status.vacant;
        owner=payable(msg.sender);
    }

    modifier rooms{
        require(aval==status.vacant,"no room available");
        _;
    }
    modifier cost(uint val){
        require(val>=2,"pay more man");
        _;
    }

    function book() payable public cost(msg.value) rooms returns(string memory){
        
        (bool confirm,bytes memory addr)=owner.call{value:msg.value}("");
        require(confirm);
        emit stat(msg.sender,msg.value);
        aval=status.occupied;
        return "boomed";
    }
}