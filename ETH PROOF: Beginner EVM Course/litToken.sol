// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;


/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/


contract MyToken {

    // Public variables 
    string public tokenName = "LitToken";
    string public tokenAbbrv = "LTK";
    uint public totalSupply = 100;

    // Mapping of addresses to walletBalance 
    mapping(address => uint) public balances;

    /* 
    This function increases the total supply for the token (by generating more)
    and increases the balance of the specified address respectively
    */
    function generateTokens(address walletAddress, uint tokenAmount) public {
        totalSupply += tokenAmount;
        balances[walletAddress] += tokenAmount;
    }

    /*
    This function decreases the total supply for a token (by burning tokens)
    and decreases the balance of the specified address respectively
    
    NOTE: Check if the account balance >= tokens to burn. 
    */
    function burnTokens(address walletAddress, uint tokenAmount) public {
          if (balances[walletAddress] >= tokenAmount){
            totalSupply -= tokenAmount;
            balances[walletAddress]-= tokenAmount;

    }
  }
}