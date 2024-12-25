//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract TheBlockchainMessanger {
    uint public changeCounter;

    address public owner;

    string public theMessage;

    constructor(){
        owner = msg.sender;
    }

    function updateTheMessage(string memory _newMessage) public {
        if(msg.sender == owner){
            theMessage = _newMessage;
            changeCounter++;
        }
        
    }
}
//this is the smart contract for simple messanger functionality on blockchain reading the string on smart contract for everyone but updatable for only owner