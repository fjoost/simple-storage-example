//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract SimpleStorage {

    /**** almacenar un uint256 -> almacenar un array de personas, que tengan 2 atributos ****/
    
    //storage variable, with slot zero
    uint256 public favoriteNumber;

    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256){
        return favoriteNumber;

    }

    //creamos un diccionario, asignacion nombre -> numero
    mapping(string => uint256) public nameToNumber;

    //crear type, con struct
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    //crear un array del type Persona
    People[] public people;
    
    //calldata(temp during the tx, cant be modified)
    //memory(temp, can be modified)
    //storage(permanent, can modified)
    //it doesnt necesary put memory keyword to uint256 variables
    function addPeople(string memory _name, uint256 _favoriteNumber) public{
        //people.push(People({favoriteNumber: _favoriteNumber, name: _name }));
        people.push(People(_favoriteNumber, _name));

        //diccionario[string] -> enlazamos -> numero
        nameToNumber[_name] = _favoriteNumber;
    }

}
