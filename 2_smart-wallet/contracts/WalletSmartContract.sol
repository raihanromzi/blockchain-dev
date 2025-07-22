// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract WalletSmartContract {

    uint balance;
    
    function deposit() public payable {
        balance += msg.value;
    }

    function getContractBalance() public view returns(uint) {
        return address(this).balance;
    }

    function withdrawAll() public {
        // get the address that execute the contract
        address payable to = payable(msg.sender);
        
        to.transfer(getContractBalance());
    }

    function withdrawToAddress(address payable to) public {
        to.transfer(getContractBalance());
    }


}