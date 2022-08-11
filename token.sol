// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts@4.7.3/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.7.3/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@4.7.3/access/Ownable.sol";

contract Mudassir is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("Mudassir", "MDS") {
        _mint(msg.sender, 10000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
