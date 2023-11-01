// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.20;

import { Integration_Test } from "../Integration.t.sol";

contract StreamedAmountOf_Integration_Test is Integration_Test {
    function setUp() public override {
        Integration_Test.setUp();
    }

    function test_RevertGiven_Null() external {
        _test_RevertGiven_Null();
        openEnded.streamedAmountOf(nullStreamId);
    }

    function test_RevertGiven_Canceled() external givenNotNull {
        _test_RevertGiven_Canceled();
        openEnded.streamedAmountOf(defaultStreamId);
    }

    function test_StreamedAmountOf_LastTimeUpdateInThePresent() external givenNotNull givenNotCanceled {
        uint128 streamedAmount = openEnded.streamedAmountOf(defaultStreamId);
        assertEq(streamedAmount, 0, "streamed amount");
    }

    function test_StreamedAmountOf() external givenNotNull givenNotCanceled {
        vm.warp({ newTimestamp: WARP_ONE_MONTH });
        uint128 streamedAmount = openEnded.streamedAmountOf(defaultStreamId);
        assertEq(streamedAmount, ONE_MONTH_STREAMED_AMOUNT, "streamed amount");
    }
}