//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract ExceptionRequire {
    mapping (address =>uint8) public balanceReceived;

    function ReceivedMoney() public payable {
        assert(msg.value == uint8(msg.value));
        balanceReceived[msg.sender] += uint8(msg.value);
    }
    function WithdrawMoney(address payable _to,uint8 _amount) public {
        require(_amount <= balanceReceived[msg.sender],"Not enough funds,aborting!!") ;
            balanceReceived[msg.sender] -= _amount;
            _to.transfer(_amount);
        
    }
}

//require is use for exception handling and show required error message as output