//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Sender {
    receive() external payable {}
    
    function withdrawTransfer(address payable _to) public {
    _to.transfer(10);
    }
    function withdrawSent(address payable _to) public {
        bool isSent = _to.send(10);

        require(isSent,"Sending the funds was unsuccessful");
    }
    
}
contract ReceiverNoAction {

    function balance() public view returns(uint) {
        return address(this).balance;
    }
    receive() external payable {}
}
contract ReceiverAction {
    uint public balanceReceived;

    receive() external payable {
        balanceReceived += msg.value;
    }  
    
    function balance() public view returns(uint) {
    return address(this).balance;
    }


}
//differenced between sent and transfer is that transfer function thrws an exception
//sent function does not care about what is happening on other side all it cars about is its going to send this away and 
//if the execution is successful it will return you a boolean