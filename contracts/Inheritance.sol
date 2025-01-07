//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
import  "./Ownable.sol";

contract InheritanceModifier is Owner{
    mapping(address=>uint) public tokenBalance;
    uint tokenPrice = 1 ether;
    constructor(){
        tokenBalance[msg.sender] = 100;        
    }

    function createnewToken() public onlyowner{
        tokenBalance[owner]++;
    }
    function burnToken() public onlyowner{
        tokenBalance[owner]--;
    }
    function purchaseToken() public payable {
        require((tokenBalance[owner] * tokenPrice)/msg.value>0,"not enough tokens");
        tokenBalance[owner] -= msg.value/tokenPrice;
        tokenBalance[msg.sender] += msg.value / tokenPrice;
    }
     function sendToken(address _to, uint _amount) public {
        require(tokenBalance[msg.sender] >= _amount, "Not enough tokens");
        tokenBalance[msg.sender] -= _amount;
        tokenBalance[_to] += _amount;
    }

}