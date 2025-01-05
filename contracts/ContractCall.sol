//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract ContractOne {
    mapping (address =>uint) public addressBalance;
    function deposit() public payable {
        addressBalance[msg.sender] += msg.value;
    }

    receive() external payable {
        deposit();
    }
}
contract ContractTwo{
    receive() external payable{}

    function depositOnContractOne(address _contractOne) public{
        //bytes memory payload = abi.encodeWithSignature("deposite()");
        (bool success, ) = _contractOne.call{value:10, gas:10000000}("");
        require(success);
    }

}