// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Exchange {
    address public tokenAddress;

    /**we’re checking that provided token is valid (not the zero address) 
    and save it to the state variable "tokenAddress". */
    constructor(address _token){
        require(_token != address(0), "Invalid token address");

        tokenAddress = _token;
    }

    /**function to add liquidity to the contract */
    function addLiquidity(uint256 _tokenAmount) public payable {
        IERC20 token = IERC20(tokenAddress);
        token.transferFrom(msg.sender, address(this), _tokenAmount);
    }

    /**function that returns token balance of an exchange */
    function getReserve() public view returns(uint256) {
        return IERC20(tokenAddress).balanceOf(address(this));
    }
}