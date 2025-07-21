// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract StringExample {
    
    // string is array of bytes, costly to store, and no native string manipulation
    // avoid storing string, use events!
    string public myString = "Hello World";

    bytes public myBytes = "Hello";


    // temporary -> memory
    function setMyString(string memory newString) public {
        myString = newString;
    }

    // compare using keccak256 hashes
    // view -> can read, cannot modify
    function compareTwoString(string memory newString) public view returns(bool) {
        return keccak256(abi.encode(myString)) == keccak256(abi.encode(newString));
    }

}