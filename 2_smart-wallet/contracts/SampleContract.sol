// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract SampleContract {

    string public myString = "Hello World";

    // payable -> meant to receive eth
    function updateString(string memory newString) public payable {
        if (msg.value == 1 ether) {
            myString = newString;
        } else {
            // send back the money to sender
            // casting -> payable() -> must sent to a payable address
            payable(msg.sender).transfer(msg.value);
        }
    }
    
}