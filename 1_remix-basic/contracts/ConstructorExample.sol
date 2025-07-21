// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract ConstructorExample {

    address public myAddress;

    // assign from transaction, do not required gas, called during deployment. Called only once
    constructor() {
        myAddress = msg.sender;
    }
    
}