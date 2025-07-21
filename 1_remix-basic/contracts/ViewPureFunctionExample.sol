// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract ViewPureFunctionExample {

    uint public myStorageVariable;
 
    // returns only used for interconnection smart contract, not for outside. It will delay. Solution, using events
    function setMyStorageVariable(uint _newVar) public returns(uint) {
        myStorageVariable = _newVar;
        return _newVar; // This return value has limitations!
    }
    
}