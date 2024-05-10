// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    string public tokenName;
    string public tokenAbbreviation;
    uint public totalSupply;

    mapping(address => uint) public balances;

    constructor() {
        tokenName = "My Token";
        tokenAbbreviation = "MTK";
        totalSupply = 0;
    }

    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    function burn(address _address, uint _value) public {
        require(balances[_address] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[_address] -= _value;
    }
}
