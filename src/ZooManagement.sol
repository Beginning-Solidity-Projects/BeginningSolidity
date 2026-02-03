// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ZooManagement {

    uint public totalVisitors;
    uint public animalCount;
    mapping (string => uint8) nameToAge;

    struct Animal {
        string species;
        string name;
        uint age;
    }

    Animal public tiger = Animal("mammal", "Leo", 20);
    Animal public elephant = Animal("mammal", "Dumbo", 35);
    Animal public panda = Animal("mammal", "Poo", 2);

    Animal[] public listofAnimals;

    function updateVisitorCount(uint _newVisitorCount) public {
        totalVisitors = _newVisitorCount;
    }

    function getTotalVisitor() public view returns (uint){
        return totalVisitors;
    }

    function addAnimal(string memory _species, string memory _name, uint _age) public {
        require(animalCount < 3, "Zoo is full");
        listofAnimals.push(Animal(_species, _name, _age));
        animalCount++;
    }

    function getAnimal(uint256 _index) public view returns(string memory, string memory, uint256) {
        require(_index < listofAnimals.length, "Not enough animals");
        Animal memory animal = listofAnimals[_index];
        return(animal.species, animal.name, animal.age);
    }

}
