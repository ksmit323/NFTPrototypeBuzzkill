// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "lib/solmate/src/tokens/ERC721.sol";
import "openzeppelin-contracts/contracts/utils/Strings.sol";


/// @title Buzzkill NFT
contract Buzzkill is ERC721 {

  uint256 public currentTokenID;

  constructor(
    string memory _name, 
    string memory _symbol
  ) ERC721(_name, _symbol) {}

  function mintTo(address recipient) public payable returns(uint256) {
    uint256 newItemId = ++currentTokenID;
    _safeMint(recipient, newItemId);
    return newItemId;
  }

  function tokenURI(uint256 id) public view virtual override returns(string memory) {
    return Strings.toString(id);
  }

}
