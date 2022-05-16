// SPDX-License-Identifier:MIT
pragma solidity ^0.8.10;

/*
Examples
-Inheritance
    -inherit functions
    -overrife functions

-Passing parameters to parent constructor
    -fixed parameters
    -variable parameters

contract A {
    function getContractName() public pure returns (string memory) {
        return "Contract A";
    }
}
contract B is A { 
      function getContractName(uint i) public pure returns (string memory) {
        return "Contract B";
    }

}
contract C is A, B{

}
*/

contract A {
    function foo() public pure returns (string memory){
        return "A";
    }
}
contract B {

}
contract C is A, B {

}