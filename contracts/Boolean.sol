//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
contract ExampleBoolean{
    bool public myBool;
    function setMyBool(bool _myBool) public{
        myBool = _myBool;
    }
}