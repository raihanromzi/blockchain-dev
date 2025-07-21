// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract AddressExample {

    address public someAddress;

    function setAddress(address newAddress) public {
        someAddress = newAddress;
    }

    function getAddressBalance() public view returns(uint) {
        return someAddress.balance;
    }
    
}