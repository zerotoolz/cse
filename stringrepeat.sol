pragma solidity ^0.4.13;

contract Repeater {
  function multiply(uint8 repeat, string pattern) returns (string) {
    bytes memory ourpattern = bytes(pattern);
    uint resultLength = repeat * ourpattern.length;
    string memory result = new string(resultLength);
    bytes memory ourresult = bytes(result);
    for (uint i = 0; i < resultLength; i++) {
        ourresult[i] = ourpattern[i % ourpattern.length];
    }
    return string(ourresult);
  }
}