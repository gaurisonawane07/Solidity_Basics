//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Mapping {
    mapping(uint => bool) public myMapping;
    mapping(address => bool) public myAddress;

    function setAddress() public {
        myAddress[msg.sender] = true;
    }

    function setValue(uint _index) public {
        myMapping[_index] = true;
    }

}
//the first function gives output true only when msg.senders address is set
//the second function gives output true only when set value of index is called by mymapping


