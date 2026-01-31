// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script} from "forge-std/Script.sol";
import {ZooManagement} from "../src/ZooManagement.sol";

contract DeployZooManagement is Script {
    function run() external returns (ZooManagement) {

        vm.startBroadcast();
        ZooManagement zooManagement = new ZooManagement();
        vm.stopBroadcast();

        return zooManagement;

    }
}
 