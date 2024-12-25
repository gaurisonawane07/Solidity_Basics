//SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

contract ExampleUint{//uint stands for unsigned integers
    uint256 public myUint = 123564;//this can store values upto (0-2^256)-1
    uint8 public myUint8 = 200;
    int public myInt = -10;//range from (2^128-[2^-128]-1)

    function setMyUint(uint _myUint) public{
        myUint = _myUint;
    }
    function incrementUint8() public{
        myUint8++;
    }
    function incrementMyint() public{
        myInt++;
    }

}