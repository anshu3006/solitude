
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract check{
    address public owner;
    constructor() {
         owner=msg.sender;
    }
    function checkOwner() public view returns (bool){
        return (owner==msg.sender);
    }
    uint[] public arr=[1,2,3,4,5,6];

    function checkeven(uint val) public pure returns(bool){
        if( val % 2 ==0 )
        {
            return true;
        }
        else {
            return false;
        }
    }

    function counteven() public view returns(uint){
        uint count=0;
        for(uint i=0;i<arr.length;i++)
        {
            if(arr[i]%2==0)
            {
                count++;
            }
        }
        return  count;
    }
    



    

}

