// Variable to hold minted Monkey NFTs ;)
let nftCollection = [];

// This function takes properties of NFTs and mints respectively
function mintNFT(hexID, skinColor, hasSunglass, age, favouriteFruit){

  // Object to hold NFT's properties
  let nftMonkey = {
    "hexID": hexID,
    "skinColor": skinColor,
    "hasSunglass": hasSunglass,
    "age": age, 
    "favouriteFruit": favouriteFruit
  };

  //Adding minted NFT to the collection `nftCollection`
  nftCollection.push(nftMonkey);

}

// Prints Minted NTFs with their properties to console
function listNFTS(){
  for (nft of nftCollection){
    console.log("Hex ID: " + nft["hexID"]);
    console.log("Skin Color: " + nft["skinColor"]);
    console.log("Sunglass: " + nft["hasSunglass"]);
    console.log("Age (years): " + nft["age"]);
    console.log("Favourite Fruit: " + nft["favouriteFruit"]);
    console.log("\n---\n")
  }
}

// Returns total number of NFTs in array `nftCollection`, by calculating the length
function getTotalSupply(){
  return nftCollection.length;
}

// Favourite Part - Minintg NFTs (^_^)
mintNFT("0x01","Black", true, 14, "Grape");
mintNFT("0x02","Yellow", true, 19, "Mango");
mintNFT("0x03","Cyan", false, 11, "Berry");
mintNFT("0x04","Brown", false, 9, "Orange");
mintNFT("0x05","White", true, 34, "Banana");
mintNFT("0x06","Red", true, 22, "Lichi");

// Getting Minted NFTs 
listNFTS();
// Printing total number of minted NFTs
console.log("Total minted NFTs: " + getTotalSupply());