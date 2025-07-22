// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract MappingWithdrawExample {

    mapping (address => uint) public balanceReceived;

    function sendMoney() public payable {
        balanceReceived[msg.sender] += msg.value;
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function withdrawAllMoney(address payable to) public {
        /* NOT SAFE
        to.transfer(balanceReceived[msg.sender]);
        balanceReceived[msg.sender] = 0;
        */

        uint balanceToWithdraw = balanceReceived[msg.sender];
        balanceReceived[msg.sender] = 0;
        to.transfer(balanceToWithdraw);
    }
    
}