//SPDX-License-Identifier: MIT


pragma solidity 0.8.30;

contract BooleanExample {

    // no need for initialization
    bool public myBool;

    function updateMyBool(bool newBool) public {
        myBool = newBool;
    }

}