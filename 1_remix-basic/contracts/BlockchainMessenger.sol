// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract BlockchainMessenger {

    uint public messageCounter;
    address public ownerAddress;
    string public theMessage;

    constructor() {
        ownerAddress = msg.sender;
    }

    function checkMessege(string memory newMessage) public {
        if (msg.sender == ownerAddress) {
            theMessage = newMessage;
            messageCounter++;
        } 
    }
    
}