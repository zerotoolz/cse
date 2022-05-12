pragma solidity ^0.4.19;

contract Kata {
  function past(int h, int m, int s) public pure returns (int) {
    return (h * 3600000) + (m * 60000) + (s * 1000);
  }
}