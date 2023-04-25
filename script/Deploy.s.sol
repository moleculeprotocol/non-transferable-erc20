// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import "forge-std/Script.sol";
import { console } from "forge-std/console.sol";
import { Token } from "../contracts/Token.sol";

contract DeployScript is Script {
    function run() public {
        vm.startBroadcast();

        Token token = new Token("Test Token", "TT");

        console.log("Token deployed at: %s", address(token));

        vm.stopBroadcast();
    }
}
