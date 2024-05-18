// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.2/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.2/access/Ownable.sol";

contract Tekken is ERC20, Ownable {

    constructor(address initialOwner)
        ERC20("Tekken", "TKN")
        Ownable(initialOwner)
    {}

    function mint(uint256 amount) public onlyOwner {
        _mint(msg.sender, amount);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }  

    function transferTo(address to, uint256 amount) public  {
        transfer(to, amount);
    }
    
}