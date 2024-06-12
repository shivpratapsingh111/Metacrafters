# Metacrafters

## This repo contains projects made while pursuing Metacrafters Course
* `JS PROOF/` contains  projects made while learning javascript
    * `mintingNFTs.js` - Creating NFT collection, by utising various concepts in js, such as arrays, objects, loops, functions etc.
        > Assessment Requirements:

            - Create a variable that can hold a number of NFTs.
            - Create an object inside your mintNFT function that will hold the metadata for your NFTs. The metadata values will be passed to the function as parameters. When the NFT is ready, you will store it in the variable you created in step 1.
            - ListNFTs() function will print all of your NFTs metadata to the console(i.e. console.log("Name: " + someNFT.name))
            - For good measure, getTotalSupply() should return the number of NFT's you have created

        > Functionality:
            
            - Has the ability to "mint" NFTs and store them.
            - You should "mint" at least three NFTs
            - Has the ability to print the details of your NFTs to the console
            - Has the ability to print the total supply of your NFT collection to the console.
---
* `ETH PROOF: Beginner EVM Course/` contains  projects made while learning solidity (beginners)
    * `litToken.sol` - Generating and buringing Tokens, and simultaeously updating TOKEN values in totalSupplyPool and walletAddress, in solidity on ethereum blockchain.
        > Assessment Requirements:

            - Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)

            - Your contract will have a mapping of addresses to balances (address => uint)

            - You will have a mint function that takes two parameters: an address and a value. The function then increases the total supply by that number and increases the balance of the “sender” address by that amount

            - Your contract will have a burn function, which works the opposite of the  mint function, as it will destroy tokens. It will take an address and value just like the mint functions. It will then deduct the value from the total supply and from the balance of the “sender”.

            - Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal to the amount that is supposed to be burned.

        > Functionality:
            
            - Has the ability to "mint" TOKENS and store them in totalSupplyPool and walletAddress.
            - Mapping of walletAddress to balances.
            - Has the ability to burn TOKENS from wallet and totalSupplyPool.
            - Has the ability to to check if the balance of "sender" is greater than or equal to the amount that is supposed to be burned.