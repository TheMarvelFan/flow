// SPDX-License-Identifier: LGPL-3.0
pragma solidity >=0.8.20;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { OpenEnded } from "../types/DataTypes.sol";

interface ISablierV2OpenEnded {
    /*//////////////////////////////////////////////////////////////////////////
                                       EVENTS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Emitted when the sender changes the amount per second.
    /// @param streamId The id of the stream.
    /// @param recipientAmount The amount of assets withdrawn to the recipient, denoted in units of the asset's
    /// decimals.
    /// @param oldAmountPerSecond The amount per second to change.
    /// @param newAmountPerSecond The newly changed amount per second.
    event AdjustOpenEndedStream(
        uint256 indexed streamId, uint128 recipientAmount, uint128 oldAmountPerSecond, uint128 newAmountPerSecond
    );

    /// @notice Emitted when a OpenEnded stream is canceled.
    /// @param streamId The id of the stream.
    /// @param sender The address of the stream's sender.
    /// @param recipient The address of the stream's recipient.
    /// @param asset The contract address of the ERC-20 asset used for streaming.
    /// @param senderAmount The amount of assets refunded to the stream's sender, denoted in units of the asset's
    /// decimals.
    /// @param recipientAmount The amount of assets left for the stream's recipient to withdraw, denoted in units of the
    /// asset's decimals.
    event CancelOpenEndedStream(
        uint256 streamId,
        address indexed sender,
        address indexed recipient,
        IERC20 indexed asset,
        uint128 senderAmount,
        uint128 recipientAmount
    );

    /// @notice Emitted when a OpenEnded stream is created.
    /// @param streamId The id of the newly created stream.
    /// @param sender The address from which to stream the assets, which has the ability to
    /// adjust and cancel the stream.
    /// @param recipient The address toward which to stream the assets.
    /// @param amountPerSecond The amount of assets that is increasing by every second.
    /// @param asset The contract address of the ERC-20 asset used for streaming.
    /// @param lastTimeUpdate The Unix timestamp for the streamed amount calculation.
    event CreateOpenEndedStream(
        uint256 streamId,
        address indexed sender,
        address indexed recipient,
        uint128 amountPerSecond,
        IERC20 asset,
        uint40 lastTimeUpdate
    );

    /// @notice Emitted when a OpenEnded stream is funded.
    /// @param streamId The id of the OpenEnded stream.
    /// @param funder The address which funded the stream.
    /// @param asset The contract address of the ERC-20 asset used for streaming.
    /// @param amount The amount of assets deposited, denoted in units of the asset's decimals.
    event DepositOpenEndedStream(uint256 indexed streamId, address indexed funder, IERC20 asset, uint128 amount);

    /// @notice Emitted when assets are refunded from a OpenEnded stream.
    /// @param streamId The id of the OpenEnded stream.
    /// @param sender The address of the stream's sender.
    /// @param asset The contract address of the ERC-20 asset used for streaming.
    /// @param amount The amount of assets deposited, denoted in units of the asset's decimals.
    event RefundFromOpenEndedStream(
        uint256 indexed streamId, address indexed sender, IERC20 indexed asset, uint128 amount
    );

    /// @notice Emitted when assets are withdrawn from a OpenEnded stream.
    /// @param streamId The id of the stream.
    /// @param to The address that has received the withdrawn assets.
    /// @param asset The contract address of the ERC-20 asset used for streaming.
    /// @param amount The amount of assets withdrawn, denoted in units of the asset's decimals.
    event WithdrawFromOpenEndedStream(
        uint256 indexed streamId, address indexed to, IERC20 indexed asset, uint128 amount
    );

    /*//////////////////////////////////////////////////////////////////////////
                                 CONSTANT FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Retrieves the amount per second of the stream, denoted in units of the asset's decimals.
    /// @dev Reverts if `streamId` references a null stream.
    /// @param streamId The id of the stream to make the query for.
    function getAmountPerSecond(uint256 streamId) external view returns (uint128 amountPerSecond);

    /// @notice Retrieves the asset of the stream.
    /// @dev Reverts if `streamId` references a null stream.
    /// @param streamId The id of the stream to make the query for.
    function getAsset(uint256 streamId) external view returns (IERC20 asset);

    /// @notice Retrieves the balance of the stream, i.e. the total deposited amounts subtracted by the total withdrawn
    /// amounts, denoted in units of the asset's decimals.
    /// @dev Reverts if `streamId` references a null stream.
    /// @param streamId The stream id for the query.
    function getBalance(uint256 streamId) external view returns (uint128 balance);

    /// @notice Retrieves the last time update of the stream, which is a Unix timestamp.
    /// @dev Reverts if `streamId` references a null stream.
    /// @param streamId The id of the stream to make the query for.
    function getLastTimeUpdate(uint256 streamId) external view returns (uint40 lastTimeUpdate);

    /// @notice Retrieves the stream's recipient.
    /// @dev Reverts if `streamId` references a null stream.
    /// @param streamId The stream id for the query.
    function getRecipient(uint256 streamId) external view returns (address recipient);

    /// @notice Retrieves the stream's sender.
    /// @dev Reverts if `streamId` references a null stream.
    /// @param streamId The stream id for the query.
    function getSender(uint256 streamId) external view returns (address sender);

    /// @notice Retrieves the stream entity.
    /// @dev Reverts if `streamId` references a null stream.
    /// @param streamId The stream id for the query.
    function getStream(uint256 streamId) external view returns (OpenEnded.Stream memory stream);

    /// @notice Retrieves a flag indicating whether the stream exists.
    /// @dev Does not revert if `streamId` references a null stream.
    /// @param streamId The stream id for the query.
    function isStream(uint256 streamId) external view returns (bool result);

    /// @notice Counter for stream ids.
    /// @return The next stream id.
    function nextStreamId() external view returns (uint256);

    /// @notice Calculates the amount that the sender can refund from stream, denoted in units of the asset's decimals.
    /// @dev Reverts if `streamId` references a null stream.
    /// @param streamId The stream id for the query.
    function refundableAmountOf(uint256 streamId) external view returns (uint128 refundableAmount);

    /// @notice Calculates the amount that the sender owes on the stream, i.e. if more assets have been streamed than
    /// its balance, denoted in units of the asset's decimals. If there is no debt, it will return zero.
    /// @dev Reverts if `streamId` references a null stream.
    /// @param streamId The stream id for the query.
    function streamDebt(uint256 streamId) external view returns (uint128 debt);

    /// @notice Calculates the amount streamed to the recipient, denoted in units of the asset's decimals.
    /// @dev Reverts if `streamId` references a null stream.
    /// @param streamId The stream id for the query.
    function streamedAmountOf(uint256 streamId) external view returns (uint128 streamedAmount);

    /// @notice Retrieves a flag indicating whether the stream was canceled.
    /// @dev Reverts if `streamId` references a null stream.
    /// @param streamId The stream id for the query.
    function wasCanceled(uint256 streamId) external view returns (bool result);

    /// @notice Calculates the amount that the recipient can withdraw from the stream,
    /// denoted in units of the asset's decimals.
    /// @dev Reverts if `streamId` references a null stream.
    /// @param streamId The stream id for the query.
    function withdrawableAmountOf(uint256 streamId) external view returns (uint128 withdrawableAmount);

    /*//////////////////////////////////////////////////////////////////////////
                               NON-CONSTANT FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Changes the stream's amount per second.
    ///
    /// @dev Emits a {Transfer} and {AdjustOpenEndedStream} event.
    ///
    /// Notes:
    /// - The streamed assets, until the adjustment moment, must be transferred to the recipient.
    ///
    /// Requiremenets:
    /// - Must not be delegate called.
    /// - `streamId` must not reference a canceled stream.
    /// - `msg.sender` must be the stream's sender.
    /// - `newAmountPerSecond` must be greater than zero.
    ///
    /// @param streamId The id of the stream to adjust.
    /// @param newAmountPerSecond The new amount per second of the OpenEnded stream, denoted in units of the asset's
    /// decimals.
    function adjustAmountPerSecond(uint256 streamId, uint128 newAmountPerSecond) external;

    /// @notice Cancels the stream and refunds any remaining assets to the sender.
    ///
    /// @dev Emits a {Transfer} and {CancelOpenEndedStream} event.
    ///
    /// Requirements:
    /// - Must not be delegate called.
    /// - `streamId` must not reference a canceled stream.
    /// - `msg.sender` must be the stream's sender.
    ///
    /// @param streamId The id of the stream to cancel.
    function cancel(uint256 streamId) external;

    /// @notice Creates a new OpenEnded stream with the `block.timestamp` as the time reference and with 0 balance.
    ///
    /// @dev Emits a {Transfer} and {CreateOpenEndedStream} event.
    ///
    /// Requiremenets:
    /// - Must not be delegate called.
    /// - `recipient` must not be the zero address.
    /// - `sender` must not be the zero address.
    /// - `amountPerSecond` must be greater than zero.
    ///
    /// @param recipient The address receiving the assets.
    /// @param sender The address streaming the assets, with the ability to adjust and cancel the stream. It doesn't
    /// have
    /// to be the same as `msg.sender`.
    /// @param amountPerSecond The amount of assets that is increasing by every second,
    /// denoted in units of the asset's decimals.
    /// @param asset The contract address of the ERC-20 asset used for streaming.
    /// @return streamId The id of the newly created stream.
    function create(
        address recipient,
        address sender,
        uint128 amountPerSecond,
        IERC20 asset
    )
        external
        returns (uint256 streamId);

    /// @notice Creates a new OpenEnded stream with the `block.timestamp` as the time reference
    /// and with `depositAmount` balance.
    ///
    /// @dev Emits a {Transfer}, {CreateOpenEndedStream} and {DepositOpenEndedStream} events.
    ///
    /// Requirements:
    /// - `depositAmount` must be greater than zero.
    /// - Refer to the requirements in {create}.
    ///
    /// @param recipient The address receiving the assets.
    /// @param sender The address streaming the assets, with the ability to adjust and cancel the stream. It doesn't
    /// have
    /// to be the same as `msg.sender`.
    /// @param amountPerSecond The amount of assets that is increasing by every second,
    /// denoted in units of the asset's decimals.
    /// @param asset The contract address of the ERC-20 asset used for streaming.
    /// @param depositAmount The amount deposited in the stream, net of fees.
    /// @return streamId The id of the newly created stream.
    function createAndDeposit(
        address recipient,
        address sender,
        uint128 amountPerSecond,
        IERC20 asset,
        uint128 depositAmount
    )
        external
        returns (uint256 streamId);

    /// @notice Deposits assets in a stream.
    ///
    /// @dev Emits a {Transfer} and {DepositOpenEndedStream} event.
    ///
    /// Requirements:
    /// - Must not be delegate called.
    /// - `streamId` must not reference a canceled stream.
    /// - `amount` must be greater than zero.
    ///
    /// @param streamId The id of the stream to deposit on.
    /// @param amount The amount deposited in the stream, denoted in units of the asset's decimals.
    function deposit(uint256 streamId, uint128 amount) external;

    /// @notice Deposits assets in multiple streams.
    ///
    /// @dev Emits multiple {Transfer} and {DepositOpenEndedStream} events.
    ///
    /// Requirements:
    /// - All requirements from {deposit} must be met for each stream.
    /// - There must be an equal number of `streamIds` and `amounts`.
    ///
    /// @param streamIds The ids of the streams to deposit on.
    /// @param amounts The amounts of assets to be deposited, denoted in units of the asset's decimals.
    function depositMultiple(uint256[] calldata streamIds, uint128[] calldata amounts) external;

    /// @notice Refunds the provided amount of assets from the stream to the sender's address.
    ///
    /// @dev Emits a {Transfer} and {RefundFromOpenEndedStream} event.
    ///
    /// Requirements:
    /// - Must not be delegate called.
    /// - `streamId` must not reference a canceled stream.
    /// - `msg.sender` must be the sender.
    /// - `amount` must be greater than zero and must not exceed the refundable amount.
    ///
    /// @param streamId The id of the stream to refund from.
    /// @param amount The amount to refund, in units of the ERC-20 asset's decimals.
    function refundFromStream(uint256 streamId, uint128 amount) external;

    /// @notice Withdraws the provided amount of assets from the stream to the `to` address.
    ///
    /// @dev Emits a {Transfer} and {Withdraw} event.
    ///
    /// Requirements:
    /// - Must not be delegate called.
    /// - `streamId` must not reference a canceled stream.
    /// - `msg.sender` must be the stream's sender or the stream's recipient.
    /// - `to` must be the recipient if `msg.sender` is the stream's sender.
    /// - `to` must not be the zero address.
    /// - `amount` must be greater than zero and must not exceed the withdrawable amount.
    ///
    /// @param streamId The id of the stream to withdraw from.
    /// @param amount The amount to withdraw, denoted in units of the asset's decimals.
    function withdraw(uint256 streamId, address to, uint128 amount) external;
}