// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Hoken is ERC721URIStorage, Ownable {
    uint256 public tokenId;

    constructor() ERC721("Hoken", "HTK") Ownable(msg.sender) {}

    function mint(string memory _tokenURI) public onlyOwner returns (uint256) {
        tokenId++;
        _safeMint(msg.sender, tokenId);
        _setTokenURI(tokenId, _tokenURI);
        return tokenId;
    }
}

// testnets.opensea.io/assets/sepolia/0x5587F154345E405a308225a7DE9d73Ebd227e3A4/1