// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract Transactions {
    uint256 private transactionCount;

    event Transfer(
        address indexed from,
        address indexed receiver,
        uint256 amount,
        string message,
        uint256 timestamp,
        string keyword
    );

    struct TransferStruct {
        address sender;
        address receiver;
        uint256 amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] private transactions;

    function addToBlockchain(
        address payable receiver,
        uint256 amount,
        string calldata message,
        string calldata keyword
    ) external {
        transactionCount++;

        transactions.push(
            TransferStruct(
                msg.sender,
                receiver,
                amount,
                message,
                block.timestamp,
                keyword
            )
        );

        emit Transfer(
            msg.sender,
            receiver,
            amount,
            message,
            block.timestamp,
            keyword
        );
    }

    function getAllTransactions()
        external
        view
        returns (TransferStruct[] memory)
    {
        return transactions;
    }

    function getTransactionCount() external view returns (uint256) {
        return transactionCount;
    }
}
