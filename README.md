# Create-a-Token
This program is "Create a token" Program that includes basic functionalities to manage the token's supply and note balaces of token's users or holders. 

# Description
The purpose of this Solidity program is to create a simple cryptocurrency token system on the Ethereum blockchain. this program is simple program of solidity contract in which we take two functions named "Mint" and "burn" and also take three varibles(Token Name, Token Abbrv., Total Supply).

# Getting Started
# Executing Program
To Run this Program, you can use Solidity IDE which is available online. here is website: (https://remix.ethereum.org)

Once you are on the Remix website, go to file explorer> create a new file and save this file with .sol extension (Example: Create_a_token.sol) Copy and paste the following code into the file:

```diff
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
  string public name_of_token= "MyToken";
  string public token_abbrv= "MTKN";
  uint public Total_supply= 0;

  mapping(address => uint) public balance;

  function mint(address address_to, uint value) public {
    Total_supply+= value;
    balance[address_to]+= value;
  }
  function burn(address address_from, uint value) public {
   Total_supply-= value;
   balance[address_from]-= value;
  }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" , and then click on the "Compile Create_a_token.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar.  and then click on the "Deploy" button.

Once the contract is deployed, you can see your functions name burn and mint. now, this two functions have its variables address and value. you can write address and value and transact it. 
here, mint functions "value" variable is used to add your coins and "address_to" variable is used for your account_name and burn function"value" variable is used to destroy your coins and "address_from" variable is also used for your account_name.

# Authors
Hrithik Singh
10.7.hrs@gmail.com

# License
This project is licensed under the MIT License - see the LICENSE file for details
