// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract MockVault is Initializable, ERC4626Upgradeable, OwnableUpgradeable, UUPSUpgradeable {
    

    function initialize(IERC20 asset_, string memory name_, string memory symbol_) external initializer {
        __Ownable_init(msg.sender);
        __ERC20_init(name_, symbol_);
        __ERC4626_init(asset_);
    }

    function _authorizeUpgrade(address /*newImplementation*/) internal override onlyOwner {}
}