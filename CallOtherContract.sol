// SPDX-License-Identifier:MIT
pragma solidity ^0.8.10;

contract CallTestContract {
    function setX(TestContract _test, uint _x) external {
        _test.setX(_x);

    }

    function getX(address _test) external view returns (uint x) {
        x = TestContract(_test).getX();
    }

    function setXSendEther(address _test, uint _x) external payable {
        TestContract(_test).setXandReceiveEther{value: msg.value}(_x);
    }

   function getXandValue(address _test) external view returns (uint x, uint value) {
        (x, value) = TestContract(_test).getXandValue();    
    }
}


contract TestContract {
    uint public x;
    uint public value = 123;

    function setX(uint _x) external {
        x = x;
    }

   

    function getX() external view returns(uint){
        return x;
    }

     function setXandReceiveEther(uint _x) external payable {
        x = x;
        value = msg.value;

    } 

    function getXandValue() external view returns (uint, uint) {
        return (x, value);
    }
}



