//SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract HelloWorld {

    string public ourString = "Hello World";

    /**
        Naming Convention:
        https://docs.soliditylang.org/en/v0.4.25/style-guide.html#naming-conventions
    */
    function updateOurString (string memory updateString) public {
        ourString = updateString;
    }

}