// SPDX-License-Identifier: MIT
pragma solidity  0.8.16;
// use latest solidity version at time of writing, need not worry about overflow and underflow

// @title ERC20 Contract

contract Token {

    //   Variables
    string public name;
    string public symbol;
    uint256 public decimals;
    uint256 public totalSupply;

    //  Track balances and allowances approved
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;
    
    // Events - fire events on state changes etc
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    
     constructor(string memory _name, string memory _symbol, uint _decimals, uint _totalSupply) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        totalSupply = _totalSupply; 
        balanceOf[msg.sender] = totalSupply;
    }

