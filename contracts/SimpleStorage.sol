//SPDX-License-Identifier: MIT

//comment: 0.8.12 

/*
el símbolo flecha hacia arriba, antes de la versión indica que desde esa versión 
en adelante aplica para el contrato
*/

//pragma solidity >=0.8.7 <0.9.0; cualquier compilador entre esas versiones

pragma solidity ^0.8.7;

contract SimpleStorage {
    //content of contract
    //boolean, uint, int, address, bytes
    //variables uint no inicializadas automáticamente comienzan en zero

    /*
    bool hasFavoriteNumber = false;
    uint favoriteNumber = 123; // uint256 default 256 bytes, could be uint8,16,128, etc
    string favoriteNumberInText = "five";
    int256 favoriteInt = -5;
    address myAddress = 0xACfc8e446164757867653D241Aef628Ff0A5C149;
    bytes32 favoriteBytes = "cat"; //0xd5s6d7as5d6a5sd que representa cat | bytes solo tbn se puede ocupar
    */

    uint256 public favoriteNumber; // init in zero

    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }




}
