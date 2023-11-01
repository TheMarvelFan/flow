// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.20;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { ISablierV2OpenEnded } from "src/interfaces/ISablierV2OpenEnded.sol";
import { Errors } from "src/libraries/Errors.sol";
import { OpenEnded } from "src/types/DataTypes.sol";

import { Integration_Test } from "../Integration.t.sol";

contract Deposit_Integration_Test is Integration_Test {
    function setUp() public override {
        Integration_Test.setUp();
    }

    function test_RevertWhen_DelegateCall() external {
        bytes memory callData = abi.encodeCall(ISablierV2OpenEnded.deposit, (defaultStreamId, DEPOSIT_AMOUNT));
        _test_RevertWhen_DelegateCall(callData);
    }

    function test_RevertGiven_Null() external whenNotDelegateCalled {
        _test_RevertGiven_Null();
        openEnded.deposit(nullStreamId, DEPOSIT_AMOUNT);
    }

    function test_RevertGiven_Canceled() external whenNotDelegateCalled givenNotNull {
        _test_RevertGiven_Canceled();
        openEnded.deposit(defaultStreamId, DEPOSIT_AMOUNT);
    }

    function test_RevertWhen_DepositAmountZero() external whenNotDelegateCalled givenNotNull givenNotCanceled {
        vm.expectRevert(Errors.SablierV2OpenEnded_DepositAmountZero.selector);
        openEnded.deposit(defaultStreamId, 0);
    }

    function test_Deposit_AssetMissingReturnValue_Not18Decimals()
        external
        whenNotDelegateCalled
        givenNotNull
        givenNotCanceled
        whenDepositAmountNonZero
    {
        uint256 streamId = createDefaultStreamWithAsset(IERC20(address(usdt)));
        test_Deposit(streamId, IERC20(address(usdt)));
    }

    function test_Deposit() external whenNotDelegateCalled givenNotNull givenNotCanceled whenDepositAmountNonZero {
        test_Deposit(defaultStreamId, dai);
    }

    function test_Deposit(uint256 streamId, IERC20 asset) internal {
        vm.expectEmit({ emitter: address(asset) });
        emit Transfer({
            from: users.sender,
            to: address(openEnded),
            value: normalizeToAssetDecimals(streamId, DEPOSIT_AMOUNT)
        });

        vm.expectEmit({ emitter: address(openEnded) });
        emit DepositOpenEndedStream({ streamId: streamId, funder: users.sender, asset: asset, amount: DEPOSIT_AMOUNT });

        expectCallToTransferFrom({
            asset: asset,
            from: users.sender,
            to: address(openEnded),
            amount: normalizeToAssetDecimals(streamId, DEPOSIT_AMOUNT)
        });
        openEnded.deposit(streamId, DEPOSIT_AMOUNT);

        uint128 actualStreamBalance = openEnded.getBalance(streamId);
        uint128 expectedStreamBalance = DEPOSIT_AMOUNT;
        assertEq(actualStreamBalance, expectedStreamBalance, "stream balance");
    }
}