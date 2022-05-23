//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Store{
    address public owner;
    string public domain;
    string public name;
    // counter
    // uint public inc = 0;
    // mapping (string => uint) public domains;
    // mapping (address => string) public addressToName;
    // mapping (address => string) public adressDomain;
    // constructor
    constructor(string memory _domain, string memory _name) {
        owner = msg.sender;
        domain = _domain;
        name = _name;
    }
    // public functions
    function getDomain() public view returns (string memory){
        return domain;
    }
    function getName() public view returns (string memory){
        return name;
    }
    function getOwner() public view returns (address){
        return owner;
    }
}
