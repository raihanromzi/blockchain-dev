// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract SampleFallback {

    uint public lastValueSent;
    string public lasFunctionCalled;
    uint public myUint;

    // 0xe492fd840000000000000000000000000000000000000000000000000000000000000001 -> coded
    function setMyUint(uint myNewUint) public {
        myUint = myNewUint;
    }

    // no function
    // by default smart contract cannot receive eth, wei

    // function just to receive eth, low gas. No data, just eth, wei, etc
    receive() external payable {
        lastValueSent = address(this).balance;
        lasFunctionCalled = "recive";
    }

    // if there is data, fallback will called
    fallback() external payable {
        // save current smart contract balance
        lastValueSent = address(this).balance;
        lasFunctionCalled = "fallback";
    }
    
}