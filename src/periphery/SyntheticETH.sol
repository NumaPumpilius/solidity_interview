// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

import "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-contracts/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "openzeppelin-contracts/contracts/access/AccessControl.sol";


contract SyntheticETH is ERC20, ERC20Burnable, AccessControl { // TODO turn into StETH
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

    address public minter;    


    constructor(address _minter) ERC20("Synthetic Ether", "sETH") {
        minter = _minter;
    }


    function mint(address to, uint256 amount) public {
        require(msg.sender == minter, "not_minter");
        _mint(to, amount);
    }


    function burnAll(address from) public {
        require(msg.sender == minter, "not_minter");
        uint256 current_bal = balanceOf(from);
        _burn(from, current_bal);
    }

    function burn(address from, uint256 amount) public {
        require(msg.sender == minter, "not_minter");
        _burn(from, amount);
    }
}