//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;


contract MyContract{
    string public ourStr = "Hello World!";

    function updateOurString(string memory _updateString) public {
        ourStr = _updateString;
    }
}