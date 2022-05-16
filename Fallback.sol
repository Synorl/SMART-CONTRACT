// SPDX-License-Identifier:MIT
pragma solidity ^0.8.10;

contract Fallback {
    event Log(uint gas);

    //Fallback function must be declared as external
    fallback() external payable {
        emit Log(gasleft());

    }
    // Helper function to check the balance
    function getBalance() public view returns (uint){
        return address(this).balance;

    }
    receive() external payable{
        
    }

}

contract SendToFallback {
    function transferToFallback(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function callFallback(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}
