// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/HelloWorld.sol";

contract TestHelloWorld {
    HelloWorld contractToTest;
    function beforeAll () public {
        contractToTest = new HelloWorld();
    }

    function testGetCounter () public {
        Assert.equal(contractToTest.getCounter(), uint(5), "Counter should be equal to 5");
    }

    function testReset () public {
        Assert.equal(contractToTest.getCounter(), uint(5), "Counter should be equl to 0");
    }

    function testAdd () public {
        contractToTest.subtract();
        Assert.equal(contractToTest.getCounter(), uint(1), "Counter should be equal to 1");
    }

    function testSubtract () public {
        contractToTest.subtract();
        Assert.equal(contractToTest.getCounter(), uint(0), "Counter should be equal to 0");
    }
}