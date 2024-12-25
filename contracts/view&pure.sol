//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
contract viewPure{
    uint public myStorageVariable;

    function getMyStorageVariable() public view returns(uint){
        return myStorageVariable;
    }
    function getAddition(uint a , uint b) public pure returns(uint){
        return a+b;
    }
    function setMyStorageVariable(uint _newVar) public returns(uint){
        myStorageVariable = _newVar;
        return _newVar;
    }
}
//view function reads from the state but doesn't write to the state
//A pure function is a function that neither writes,nor reads from state variales it can only access its own arguments and other pure functions