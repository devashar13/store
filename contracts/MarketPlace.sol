//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
import "./Store.sol";
import "hardhat/console.sol";

contract MarketPlace {
    error DomainExists(string domain,address ownerAddress);
    // array of stores
    mapping(address => Store) public stores;
    // store domains mapping
    mapping(address => string) public storeDomains;
    function createStore(string memory _domain, string memory _name) public {
        // check if domain already exists
       if (keccak256(abi.encodePacked(storeDomains[msg.sender])) != keccak256(abi.encodePacked(""))){
            console.log("Domain already exists");
            revert DomainExists(_domain,msg.sender);
        }
        Store store = new Store(_domain, _name);
        storeDomains[msg.sender] = _domain;
        stores[msg.sender] = store;
    }

}
