# Web3 101 Solidity Workshop
Welcome to the introductory workshop on Solidity 👨‍💻

Today, we'll explore the basics of smart contracts on the Ethereum blockchain and get our hands dirty with some real coding. Don't worry if you're completely new to this - we're going to start from the ground up. 😁

## Introduction to Ethereum and Smart Contracts
<details>
<summary>What is Ethereum?</summary>
Ethereum is a decentralized, open-source blockchain system featuring smart contract functionality. Often referred to as a "world computer", Ethereum provides a platform where developers can build and deploy decentralized applications (DApps). Unlike Bitcoin, which is primarily a digital currency, Ethereum is a broader platform for developing a wide range of decentralized applications.

Ethereum's native cryptocurrency, Ether (ETH), is used to facilitate transactions on the platform. It acts as a 'fuel' for operating the distributed application platform. Ethereum has become a hub for numerous decentralized finance (DeFi) applications, NFTs (Non-Fungible Tokens), and other blockchain-based projects.  
</details>

<details>
<summary>What are Smart Contracts?</summary>

At the heart of Ethereum's functionality are smart contracts. A smart contract is a self-executing contract with the terms of the agreement between buyer and seller being directly written into lines of code. These contracts run on the blockchain, so they are stored on a public database and cannot be changed. The transactions that happen in a smart contract are processed by the blockchain, which means they can be sent automatically without a third party.

Key features of smart contracts:

```
- Autonomy: Once deployed, they operate without further intervention from the participants.
- Trustless: The decentralized and transparent nature of the blockchain means trust is built into the system.
- Backup: Data is duplicated across the blockchain, mitigating the risk of data loss.
- Safety: Encrypted and secure, reducing the risk of hacks or fraud.
- Speed: Automated processes significantly reduce the time of transactions.
```

Smart contracts are written in a programming language called Solidity, which is specifically designed for Ethereum to create these contracts.
</details>

## Introduction to Solidity
<details>
<summary>What is Solidity?</summary>

Solidity is a high-level, object-oriented programming language designed specifically for writing smart contracts. It is used for implementing smart contracts on various blockchain platforms, most notably, Ethereum. Developed by Ethereum's team, its syntax is heavily influenced by JavaScript, C++, and Python, making it relatively easy to understand for those familiar with any of these languages.

Key Features of Solidity

```
- Statically Typed: Solidity is a statically-typed language, meaning the data type of each variable (integer, string, array, etc.) must be specified.
- EVM Compatibility: Solidity is designed to compile code for the Ethereum Virtual Machine (EVM), the runtime environment for Ethereum smart contracts.
- Smart Contract Oriented: It offers various features like inheritance, libraries, and user-defined types to facilitate robust smart contract development.
- Security Focused: Given the immutable and high-value nature of blockchain, Solidity includes various features to handle security vulnerabilities and threats.
```
</details>

### Basic Structure of a Solidity Contract
```solidity
// Specifies the Solidity version. This is to ensure that the contract does not get compiled with a newer compiler version that might introduce changes.
pragma solidity ^0.8.0;

// Contract declaration. Think of this like a class in object-oriented programming.
contract BasicContract {

    // State variable to store a number. Stored on the blockchain.
    uint private storedNumber;

    // Event declaration - used for logging activity. Clients can listen for these events.
    event NumberChanged(uint newNumber);

    // Constructor - called when the contract is deployed. Initializes contract state.
    constructor() {
        storedNumber = 5; // Setting an initial value
    }

    // Public function to store a number. The 'public' keyword makes it callable from outside the contract.
    function storeNumber(uint _number) public {
        storedNumber = _number;

        // Emitting an event to log the action.
        emit NumberChanged(_number);
    }

    // Public function to retrieve the stored number. 
    // 'view' means it only reads from the blockchain and does not modify the state.
    // 'returns' specifies the return type.
    function retrieveNumber() public view returns (uint) {
        return storedNumber;
    }
}
```

This example demonstrates a simple Solidity contract. It has a state variable, a constructor, two functions, and an event. The storeNumber function allows a number to be stored, and retrieveNumber allows it to be retrieved. The NumberChanged event is emitted whenever the number is changed, which can be useful for front-end applications interacting with this contract.


### Using These Samples
1. Open up [Remix](https://remix.ethereum.org), a no install Ethereum development environment in your browser.
2. Copy the Solidity code samples. compile and then deploy the sample contracts.
3. Interact with the contract's functions under the Deployed Contracts tab.

### Demo Contracts
HelloWorld.sol - Everyone has to start somewhere ¯\_(ツ)_/¯ \
Token.sol - A simplified version of an [ERC20 token](https://ethereum.org/en/developers/docs/standards/tokens/erc-20/), the building blocks to DeFi.

### It's Not Working

I might see Twitter messages better on [@0xV4L3NT1N3](https://twitter.com/0xV4L3NT1N3).
