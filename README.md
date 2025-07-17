# Hoken NFT Smart Contract

A simple and secure NFT (Non-Fungible Token) smart contract built with Solidity and OpenZeppelin. This project allows you to mint unique NFTs with custom metadata and deploy them on Ethereum-compatible blockchains.

## 🚀 Features

- **ERC-721 Standard**: Compliant with the ERC-721standard for non-fungible tokens
- **OpenZeppelin Integration**: Built on battle-tested OpenZeppelin contracts
- **Owner-Only Minting**: Only the contract owner can mint new NFTs
- **Custom Metadata**: Support for custom token URIs with metadata
- **Multiple Deployment Options**: Support for both Ethers.js and Web3.js deployment
- **Comprehensive Testing**: Unit tests included for contract functionality

## 📋 Prerequisites

Before you begin, ensure you have the following installed:

- [Node.js](https://nodejs.org/) (v14 or higher)
-npm](https://www.npmjs.com/) or [yarn](https://yarnpkg.com/)
- [Hardhat](https://hardhat.org/) or [Remix IDE](https://remix.ethereum.org/)
- A Web3 wallet (MetaMask, etc.)
- Some test ETH for deployment (Sepolia, Goerli, etc.)

## 🛠️ Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd mint-nft-smart-contract
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```
3. **Install OpenZeppelin contracts**
   ```bash
   npm install @openzeppelin/contracts
   ```

## 📁 Project Structure

```
mint-nft-smart-contract/
├── contracts/
│   └── Hoken.sol              # Main NFT smart contract
├── scripts/
│   ├── deploy_with_ethers.ts  # Deployment script using Ethers.js
│   ├── deploy_with_web3.ts    # Deployment script using Web3.js
│   ├── ethers-lib.ts          # Ethers.js deployment library
│   └── web3-lib.ts            # Web3.js deployment library
├── tests/
│   └── Hoken_test.sol         # Contract tests
├── my-nft-art/
│   ├── metadata.json          # NFT metadata example
│   └── nft-art.png            # NFT image
└── artifacts/                 # Compiled contract artifacts
```

## 🔧 Smart Contract Details

### Hoken Contract

The main contract (`Hoken.sol`) is an ERC-721 implementation with the following features:

- **Name**: `Hoken`
- **Symbol**: `HTK`
- **Owner-Only Minting**: Only the contract owner can mint new NFTs.
- **Auto-Incrementing Token IDs**: Each minted NFT receives a unique, sequential token ID.
- **Custom Metadata**: Each NFT can have custom metadata via its token URI.

### 🔑 Key Functions

- `mint(address to, string memory tokenURI)`: Allows the contract owner to mint a new NFT to the specified address with a custom token URI.
- `setBaseURI(string memory baseURI)`: Sets the base URI for all token metadata.
- `tokenURI(uint256 tokenId)`: Returns the metadata URI for a given token ID.
- `totalSupply()`: Returns the total number of NFTs minted.

## 🚀 Deployment

You can deploy the Hoken NFT contract using several methods:

### 1. Using Remix IDE

1. Open [Remix IDE](https://remix.ethereum.org/)
2. Create or upload the `Hoken.sol` contract file.
3. Compile the contract using the Solidity compiler.
4. Deploy the contract to your preferred network (e.g., Sepolia, Goerli) using the Remix Deploy & Run module and connect your wallet (e.g., MetaMask).

### 2. Using Hardhat

1. **Configure Hardhat**  
   If you haven't already, create a `hardhat.config.js` file and set up your network and compiler settings.

2. **Deploy with Ethers.js**  
   Run the deployment script using Ethers.js:
   ```bash
   npx hardhat run scripts/deploy_with_ethers.ts --network <network-name>
   ```

3. **Deploy with Web3.js**  
   Alternatively, you can use the Web3.js deployment script:
   ```bash
   npx hardhat run scripts/deploy_with_web3.ts --network <network-name>
   ```

### 3. Using Standalone Scripts

#### Ethers.js

1. Install dependencies (if not already installed):
   ```bash
   npm install ethers
   ```
2. Run the deployment script:
   ```bash
   npx ts-node scripts/deploy_with_ethers.ts
   ```

#### Web3.js

1. Install dependencies (if not already installed):
   ```bash
   npm install web3
   ```
2. Run the deployment script:
   ```bash
   npx ts-node scripts/deploy_with_web3.ts
   ```

> **Note:**  
> - Replace `<network-name>` with your target network (e.g., `sepolia`, `goerli`, or `localhost`).
> - Make sure your environment variables (such as private keys and RPC URLs) are set up as required by your deployment scripts.

## 🧪 Testing

You can test the smart contract using either Hardhat or Remix IDE.

### Using Hardhat

Run all tests with:

## 📝 Usage

### Minting an NFT

1. **Deploy the contract** to your preferred network.
2. **Prepare metadata**: Create a JSON file with your NFT metadata (see example below).
3. **Upload to IPFS**: Upload your metadata JSON file and image to IPFS (e.g., using [web3.storage](https://web3.storage/) or [Pinata](https://pinata.cloud/)).
4. **Mint the NFT**: Call the `mint()` function with the IPFS URI of your metadata.

### Example Metadata
```

### Interacting with the Contract

```javascript
// Example: Mint an NFT using Ethers.js
const contract = new ethers.Contract(contractAddress, contractABI, signer);
const tokenURI = "ipfs://your-metadata-uri";
const tx = await contract.mint(tokenURI);
await tx.wait();
```

## 🌐 Viewing on OpenSea

After deployment, you can view your NFTs on OpenSea testnet:
- **Sepolia**: https://testnets.opensea.io/assets/sepolia/{contract-address}/{token-id}
- **Goerli**: https://testnets.opensea.io/assets/goerli/{contract-address}/{token-id}

Example: `https://testnets.opensea.io/assets/sepolia/0587F15434545a308225a7DE9d73d227e3A4/1 Security Features

- **Ownable Pattern**: Only the contract owner can mint NFTs
- **Safe Minting**: Uses OpenZeppelins `_safeMint` for secure token creation
- **Access Control**: Built-in access control mechanisms
- **Reentrancy Protection**: Inherited from OpenZeppelin contracts

## 📚 Dependencies

- **@openzeppelin/contracts**: ^4.9.0 (or latest)
- **ethers**: ^5.7.0 (for Ethers.js deployment)
- **web3**: ^1.9.0 (for Web3.js deployment)
- **hardhat**: ^2.17.0 (for development and testing)

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -mAdd some amazing feature`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## ⚠️ Disclaimer

This smart contract is for educational purposes. Always audit your contracts before deploying to mainnet and ensure you understand the security implications.

## 🆘 Support

If you encounter any issues or have questions:
1. Check the [Issues](../../issues) page
2. Review the OpenZeppelin documentation
3. Consult Ethereum development resources

---

**Happy Minting! 🎨✨** 