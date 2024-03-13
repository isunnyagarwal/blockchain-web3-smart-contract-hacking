// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23; // This is solidity version

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

    //uint256 public favoriteNumber
    //type visibility name
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage newSimppleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimppleStorageContract);
    }
    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        //Address
        //ABI - Application Binary Interface
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrive();
    }
}