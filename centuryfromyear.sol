pragma solidity ^0.4.19;
contract Kata {
  function century(int year) public pure returns (int) {
    return (year + 99) / 100;
  }
}

/* or next 

pragma solidity ^0.4.19;
contract Kata {
  function century(int year) public pure returns (int) {
  int century = 0;
  
  for(int i = 0; i < year; i++) {
    if(i % 100 == 0) {
      century++;
    }
  }
  return century;// your code here
  }
}
*/