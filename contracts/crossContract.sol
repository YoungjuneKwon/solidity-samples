// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract MyCrocessContract {
    IERC721 other;
    uint256 pA;
    uint256 pB;

    constructor(address otherAddress, uint256 priceA, uint256 priceB) {
        other = IERC721(otherAddress);
        pA = priceA;
        pB = priceB;
    }

    function getPrice() public view returns (uint256) {
        uint256 b = other.balanceOf(msg.sender);
        return b > 0 ? pB : pA;
    }
}
