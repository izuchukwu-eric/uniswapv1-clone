// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    
    /**we’re extending the ERC20 contract provided by OpenZeppelin
     and defining our own constructor that allows us to set token name, 
     symbol, and initial supply. The constructor also mints initialSupply 
     of tokens and sends them to token creator’s address. */
    constructor(string memory name, string memory symbol, uint256 initialSupply) ERC20 (name, symbol) {
        _mint(msg.sender, initialSupply);
    }
}