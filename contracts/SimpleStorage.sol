//SPDX-License-Identifier: MIT

//pragma solidity ^0.8.7; the symbol declare that from this version of compiler on above the contracts works
//pragma solidity >=0.8.7 <0.9.0; this contract will work with any version of compiler between the two defined previously

pragma solidity ^0.8.7;

contract SimpleStorage {
    //content of contract, like a class
    //uint256, int256, bool, string, address, bytes32 || uint type initializes to zero

    uint256 public favoriteNumber;

    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
        //if we call a retrieve(), it will spend gas
        //because, we adding +1 instruction to execute in parent function
        //retrieve();
    }

    //view & pure functions when called alone, don't spend gas
    //because, it doesnt change blockchain status, only read status
    function retrieve() public view returns (uint256){
        return favoriteNumber;

    }
}
