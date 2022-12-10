//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract SimpleStorage {

    /**** almacenar un uint256 -> almacenar un array de personas, que tengan 2 atributos ****/
    
    //crear type, con struct
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    //crear un array del type Persona
    People[] public people;
    
    //añadir personas al array
    function addPeople(string memory _name, uint256 _favoriteNumber) public{
        //people.push(People({favoriteNumber: _favoriteNumber, name: _name }));
        people.push(People(_favoriteNumber, _name));
    }

    uint256 public favoriteNumber;

    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256){
        return favoriteNumber;

    }

}
