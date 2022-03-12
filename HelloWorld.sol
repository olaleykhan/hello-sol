// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;


contract HelloWorld{
        //address of the owner (who deployed the contract)
    address public owner;
    
    // the first person to deploy the contract is
    // the owner
    constructor() {
        owner = msg.sender;
    }
    string public contractName = "Hello world";
    uint256 public level = 1;
    string public creatorName;

    struct Creator{
        string name;
        uint256 age;
        uint256 level;
        string contractName;
    }

    Creator public creator = Creator({
        name: "Lekan dev",
        age: 25,
        level: 1,
        contractName:contractName
    });

    Creator[] public creators;
    

    function createCreator(string memory _creatorName) public {
        creatorName = _creatorName;
    }

    function getCreator() public view returns(string memory)  {
        return creatorName;
    }

    function addCreatorInArray(string memory _name, uint256 _age, uint256 _level ) public {
        creators.push(Creator(_name, _age,_level, contractName));
    }

    function getCreatorsList() public view returns(Creator[] memory){
        return creators;
    }

}
