pragma solidity ^0.4.19;

contract Kata {
  function angle(int n) public pure returns (int) {
    uint z = 3;
    n = 180 * (n - 2);
    return n; 
  }
}