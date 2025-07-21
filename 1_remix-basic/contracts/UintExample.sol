//SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

contract UintExample {
    
    uint256 public myUint; // (0-2^256-1)

    // if initialize with default value, it will cost gas
    uint8 public myUint8 = 255; // max: 255

    uint8 public myUintExp = 2 ** 4;

    int public myInt; // (-2^256 -1 to 2^256 -1)

    function changeMyUint(uint256 newUint) public {
        myUint = newUint;
    }

    function decrementUint() public {

        // to pass underflow or overflow
        unchecked {
            myUint8--;
        }
    }

    function incrementUint() public {
        myUint8++;
    }


}