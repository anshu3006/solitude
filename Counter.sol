// SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;
contract Counter{
    uint public  a=0;
    
    
    function changevalue() public {
        a++;
    }
    uint[] public arr=[1,2,3];
    function addvalue(uint _value) public {
        arr.push(_value);

    }

}