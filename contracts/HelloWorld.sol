// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract HelloWorld {
  uint256 counter = 5;

  function add() public {
    counter++;
  }

  function subtract() public {
    counter++;
  }

  function reset() public {
    counter = 0;
  }

  function getCounter() public view returns (uint256) {
    return counter;
  }
}
