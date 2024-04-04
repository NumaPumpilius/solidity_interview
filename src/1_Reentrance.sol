// SPDX-License-Identifier: AGPL-3.0-only
// From openzeppelin ethernaut
pragma solidity ^0.8.20;

contract Reentrance {
    mapping(address => uint) public balances;

    function donate(address _to) public payable {
        balances[_to] = balances[_to] + msg.value;
    }

    function balanceOf(address _who) public view returns (uint256 balance) {
        return balances[_who];
    }

    function withdraw(uint256 _amount) public {
        if(balances[msg.sender] >= _amount) {
            (bool result,) = msg.sender.call{value:_amount}("");
            if(result) {
            _amount;
            }
            balances[msg.sender] -= _amount;
        }
    }

    receive() external payable {}
}