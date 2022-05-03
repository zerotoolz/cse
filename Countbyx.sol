pragma solidity ^0.4.19;

contract CountByX {

  function countBy(int x, int n) view returns (int[]) {
    int[] z;
    int times = n;
    for (int i = x; times >0; i += x) { 
      z.push(i);
      times --;         
    }
    return z;
  }
}