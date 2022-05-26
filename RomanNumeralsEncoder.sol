pragma solidity ^0.4.19; //all credits to https://www.codewars.com/users/kxc1573 

contract Kata {
    
    uint[13] key = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
    string[13] numerals = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"];
    
    function solution(uint n) public view returns (string) {
        string memory res = "";
        for (uint i = 0; i < key.length; i++) {
            while (n >= key[i]) {
                n -= key[i];
                res = strConcat(res, numerals[i]);
            } 
        }
        return res;
    }
    
    function strConcat(string _a, string _b) internal pure returns (string){
        bytes memory _ba = bytes(_a);
        bytes memory _bb = bytes(_b);
        string memory ret = new string(_ba.length + _bb.length);
        bytes memory bret = bytes(ret);
        uint k = 0;
        for (uint i = 0; i < _ba.length; i++)bret[k++] = _ba[i];
        for (i = 0; i < _bb.length; i++) bret[k++] = _bb[i];
        return string(bret);
   } 
}