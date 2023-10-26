// SPDX-License-Identifier: LGPL-3.0
pragma solidity >=0.8.20;

/// @title Errors
/// @notice Library with custom erros used across the OpenEnded contract.
library Errors {
    /*//////////////////////////////////////////////////////////////////////////
                                 SABLIER-V2-OpenEnded
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Thrown when trying to set the amount per second of a stream to zero.
    error SablierV2OpenEnded_AmountPerSecondZero();

    /// @notice Thrown when trying to create a OpenEnded stream with a zero deposit amount.
    error SablierV2OpenEnded_DepositAmountZero();

    /// @notice Thrown when trying to deposit on multiple streams and the number of stream ids does
    /// not match the number of deposit amounts.
    error SablierV2OpenEnded_DepositArrayCountsNotEqual(uint256 streamIdsCount, uint256 amountsCount);

    /// @notice Thrown when an unexpected error occurs during the calculation of amounts.
    error SablierV2OpenEnded_CancelInvalidCalculation(
        uint256 streamId, uint128 balance, uint128 senderAmount, uint128 recipientAmount
    );

    /// @notice Thrown when the id references a null stream.
    error SablierV2OpenEnded_Null(uint256 streamId);

    /// @notice Thrown when trying to refund or withdraw with an amount greater than the available amount.
    error SablierV2OpenEnded_Overdraw(uint256 streamId, uint128 amount, uint128 availableAmount);

    /// @notice Thrown when trying to create a OpenEnded stream with the recipient as the zero address.
    error SablierV2OpenEnded_RecipientZeroAddress();

    /// @notice Thrown when trying to create a OpenEnded stream with the sender as the zero address.
    error SablierV2OpenEnded_SenderZeroAddress();

    /// @notice Thrown when trying to cancel or deposit a canceled stream.
    error SablierV2OpenEnded_StreamCanceled(uint256 streamId);

    /// @notice Thrown when `msg.sender` lacks authorization to perform an action.
    error SablierV2OpenEnded_Unauthorized(uint256 streamId, address caller);

    /// @notice Thrown when trying to refund or withdraw zero assets from a stream.
    error SablierV2OpenEnded_AmountZero(uint256 streamId);

    /// @notice Thrown when trying to withdraw to the zero address.
    error SablierV2OpenEnded_WithdrawToZeroAddress();
}
