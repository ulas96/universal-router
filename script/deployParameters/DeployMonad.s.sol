// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {DeployUniversalRouter} from '../DeployUniversalRouter.s.sol';
import {RouterParameters} from 'contracts/types/RouterParameters.sol';

contract DeployMonad is DeployUniversalRouter {
    function setUp() public override {
        params = RouterParameters({
            permit2: 0x000000000022D473030F116dDEE9F6B43aC78BA3,
            weth9: 0x760AfE86e5de5fa0Ee542fc7B7B713e1c5425701,
            v2Factory: 0xe26dd94f67Ca3615fcaF6062750147F37Df84F7a,
            v3Factory: 0xA411B86736d16423d0Ed7585330B513310737083,
            pairInitCodeHash: hex"1fa70eb1d54eb2007acbf24d7a22d171e4d7d83f736b11d5628c4c35a82a2f00",
            poolInitCodeHash: 0xe6376d564e1294a071d170588cad20d4df7f1260a015281ee8e31f2ca585b6f8,
            v4PoolManager: address(0),
            v3NFTPositionManager: 0x31aD3feaA7B13aEf6f9d84814F217A9d0068a485,
            v4PositionManager: address(0)
        });

        unsupported = 0x76D631990d505E4e5b432EEDB852A60897824D68;
    }
}
