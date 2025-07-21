// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract MsgSenderExampel {

    address public someAddress;

    function updateSomeAddress() public {
        someAddress = msg.sender;
    }
    
}