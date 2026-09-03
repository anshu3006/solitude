// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract ownable{
    address owner;
    constructor(){
        owner=msg.sender;
    }
    
    modifier onlyOwner(){
        require(owner==msg.sender,"");
        _;

}
}
contract inheritance_and_factories is ownable{
    string secret="lol";
    constructor(){
        super;
    }
    function secretkey() public view onlyOwner returns(string memory){
        return secret;
    }



}