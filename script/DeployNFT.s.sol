// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {Script} from 'forge-std/Script.sol';

import {Buzzkill} from "src/NFT.sol";

/// @notice A very simple deployment script
contract DeployNFT is Script {

  /// @notice The main script entrypoint
  /// @return nft The deployed contract
  function run() external returns (Buzzkill nft) {
    uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
    vm.startBroadcast(deployerPrivateKey);
    nft = new Buzzkill("Buzzkill", "BZK", "baseURI");
    vm.stopBroadcast();
  }
}