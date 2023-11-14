// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "lib/solmate/src/tokens/ERC721.sol";
import "lib/openzeppelin-contracts/contracts/utils/Strings.sol";



/// @title Buzzkill NFT
contract Buzzkill {
  string public greeting;
  address public owner;

  // CUSTOMS
  error BadGm();
  event GMEverybodyGM();

  constructor(string memory newGreeting) {
    greeting = newGreeting;
    owner = msg.sender;
  }

  function gm(string memory myGm) external returns(string memory greet) {
    if (keccak256(abi.encodePacked((myGm))) != keccak256(abi.encodePacked((greet = greeting)))) revert BadGm();
    emit GMEverybodyGM();
  }

  function setGreeting(string memory newGreeting) external {
    greeting = newGreeting;
  }
}
