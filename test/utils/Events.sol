// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.8.20;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

abstract contract Events {
    event Transfer(address indexed from, address indexed to, uint256 value);

    event AdjustOpenEndedStream(
        uint256 indexed streamId,
        IERC20 indexed asset,
        uint128 recipientAmount,
        uint128 oldAmountPerSecond,
        uint128 newAmountPerSecond
    );

    event CancelOpenEndedStream(
        uint256 streamId,
        address indexed sender,
        address indexed recipient,
        IERC20 indexed asset,
        uint128 senderAmount,
        uint128 recipientAmount
    );

    event CreateOpenEndedStream(
        uint256 streamId,
        address indexed sender,
        address indexed recipient,
        uint128 amountPerSecond,
        IERC20 asset,
        uint40 lastTimeUpdate
    );

    event DepositOpenEndedStream(
        uint256 indexed streamId, address indexed funder, IERC20 indexed asset, uint128 amount
    );

    event RefundFromOpenEndedStream(
        uint256 indexed streamId, address indexed sender, IERC20 indexed asset, uint128 amount
    );

    event RestartOpenEndedStream(
        uint256 indexed streamId, address indexed sender, IERC20 indexed asset, uint128 amountPerSecond
    );

    event WithdrawFromOpenEndedStream(
        uint256 indexed streamId, address indexed to, IERC20 indexed asset, uint128 amount
    );
}