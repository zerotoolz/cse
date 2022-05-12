pragma solidity ^0.4.19;

contract HelloWorld {
  string public greet = "Hello World!";
  function setGreeting(string s) { greet = s; }
}