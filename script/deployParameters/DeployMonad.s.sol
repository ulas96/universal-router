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
            v3Factory: 0xD404cbEE8213aD72f545c07fA47c320CAB86677b,
            pairInitCodeHash: 0x01fa70eb1d54eb2007acbf24d7a22d171e4d7d83f736b11d5628c4c35a82a2f0,
            poolInitCodeHash: 0xc0ccad81c22e0bf0c1c263ac97e317437010ea69d9ee4ceb18ceda22c27098ee,
            v4PoolManager: address(0),
            v3NFTPositionManager: 0x792116870fB00965ebC81F05F4B9a364aF9d2EFe,
            v4PositionManager: address(0)
        });

        unsupported = 0x76D631990d505E4e5b432EEDB852A60897824D68;
    }
}
