// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract MappingExample {

    // Mapping -> Hash Map
    mapping (uint => bool) public myMapping;
    mapping (address => bool) public myAddressMapping;
    mapping (uint => mapping (uint => bool)) public myMappingInsideMapping;

    // default set by false, there is no lenght
    function setValue(uint index) public {
        myMapping[index] = true;
    }

    function setMyAddressMapping() public {
        myAddressMapping[msg.sender] = true;
    }

    function setMyMappingInsideMapping(uint key1, uint key2, bool value) public {
        myMappingInsideMapping[key1][key2] = value;
    }
    
}