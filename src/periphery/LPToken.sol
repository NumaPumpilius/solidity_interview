// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

import "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-contracts/contracts/token/ERC20/extensions/ERC20Burnable.sol";


contract LPToken is ERC20, ERC20Burnable  {

    address public minter;


    constructor(address _minter) ERC20("LP Token ETH-ATR", "LPEA") {
        minter = _minter;
    }


    function mint(address to, uint256 amount) public {
        require(msg.sender == minter, "not_minter");
        _mint(to, amount);
    }


    function burn(address from, uint256 amount) public {
        require(msg.sender == minter, "not_minter");
        _burn(from, amount);
    }
}