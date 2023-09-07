// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.21;

contract ErrorHandling {
    uint public num;

    constructor() {
        num = 0;
    }
    //  check if the input _num is greater than 10
    function testRequire(uint _num) public {
        require(_num > 10, "Input number must be greater than 10");
        num = _num;
    }

    // asserting that num is greater than 10
    function testAssert() public view {
        assert(num > 10);
    }

    // manually reverting the transaction with custom error  refunding unused gas
    function testRevert() public pure {
        if (false) {
            revert("Error occurred");
        }
    }
}
