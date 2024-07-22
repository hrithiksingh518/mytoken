
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// variables here
contract MyToken {
  string public name_of_token= "MyToken";
  string public token_abbrv= "MTKN";
  uint public Total_supply= 0;

// mapping balances of address
  mapping(address => uint) public balance;

// mint function
  function mint(address address_to, uint value) public {
    Total_supply+= value;
    balance[address_to]+= value;
  }
// burn function
  function burn(address address_from, uint value) public {
   Total_supply-= value;
   balance[address_from]-= value;
  }
}
