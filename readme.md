# Tekken Token Smart Contract

This repository contains the Tekken Token (TKN) smart contract, an ERC20-compliant token with additional functionalities for minting and burning tokens. The contract leverages OpenZeppelin's robust and secure libraries.

## Key Features

- **ERC20 Standard**: Implements the standard interface for fungible tokens, ensuring compatibility with existing ERC20 tools and platforms.
- **Mintable**: Allows the owner to create new tokens and add them to the total supply.
- **Burnable**: Permits token holders to destroy their tokens, reducing the total supply.
- **Ownership**: Restricts certain functionalities to the contract's owner, enhancing control and security.

## Contract Structure

### Inheritance

The `Tekken` contract inherits from the following OpenZeppelin contracts:
- `ERC20`: Standard ERC20 token implementation.
- `Ownable`: Provides a basic access control mechanism, where an account (the owner) has exclusive access to specific functions.

### Constructor

The constructor initializes the token with the name "Tekken" and the symbol "TKN". It also sets the initial owner of the contract.

### Functions

- **mint (onlyOwner)**: Allows the owner to mint new tokens to their own address.
  ```solidity
  function mint(uint256 amount) public onlyOwner {
      _mint(msg.sender, amount);
  }
  ```

- **mint (onlyOwner)**: Allows the owner to mint new tokens to a specified address.
  ```solidity
  function mint(address to, uint256 amount) public onlyOwner {
      _mint(to, amount);
  }
  ```

- **burn**: Allows any token holder to burn a specified amount of their own tokens.
  ```solidity
  function burn(uint256 amount) public {
      _burn(msg.sender, amount);
  }
  ```

- **transferTo**: Allows any token holder to transfer a specified amount of their tokens to another address.
  ```solidity
  function transferTo(address to, uint256 amount) public {
      transfer(to, amount);
  }
  ```

## Security

The contract uses OpenZeppelin's implementation of ERC20, which is widely regarded for its security and reliability. Despite this, it's essential to conduct independent security audits and reviews.

## License

This project is licensed under the MIT License.

## Acknowledgments

- **OpenZeppelin**: For providing secure and community-reviewed contract implementations.

---
