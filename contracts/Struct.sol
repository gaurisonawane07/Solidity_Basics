//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;



contract wallet {

    PaymentReceived public payment;
    

    function payContract() public payable {
        payment = new PaymentReceived(msg.sender,msg.value);
    }
}
contract PaymentReceived {
    address public from;
    uint public amount;

    constructor(address _from,uint _amount) payable {
        from = _from;
        amount = _amount;
    }
}