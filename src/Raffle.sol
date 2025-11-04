// Layout of Contract:
// version
// imports
// errors
// interfaces, libraries, contracts
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// view & pure functions


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title A sample Raffle contract
 * @author Afoma Orji
 * @notice This contract is for creating a simple raffle
 * @dev Implements Chainlink VRFv2.5
 */ 
contract Raffle{
    /* Errors */
    error Raffle_SendMoreToEnterRaffle();
    uint256 private immutable i_entranceFee;
    
    construtor(uint256 i_entranceFee) {
        i_entranceFee = entranceFee;
    }
    function enterRaffle() public payable {
        // require(msg.value >= i_entranceFee, "Not enough ETH sent");
        // require(msg.value >= i_entranceFee, SendMoreToEnterRaffle());
        if(msg.value < i_entranceFee){
            revert Raffle_SendMoreToEnterRaffle();
        }

    }

    function pickWinner() public {}

    /** Getter Functions */
    function getEntranceFee() external view returns(uint256){
        return i_entranceFee;
    }
}
