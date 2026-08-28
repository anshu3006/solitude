// SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;
contract Counter{
    uint public  a=0;
    uint b=0;
    
    function changevalue() public {
        a++;
    }
    uint[] public arr=[1,2,3];
    function addvalue(uint _value) public {
        arr.push(_value);

    }

    //mapping

    mapping(uint => string) public map1;

    function addmapvalues(uint key , string memory val) public{
        map1[key]=val;
    }
    function checkmapvalues(uint vals) public view returns(string memory){
        return map1[vals];
    }///or generally use map as it is public

    struct student{
        uint roll;
        string name;
    }
    mapping(uint=>student) public st;
    function addstudentdetails(uint index,uint roll_number,string memory name) public {
        st[index]=student(roll_number,name);
    }

}