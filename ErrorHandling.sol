// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.21;

contract ErrorHandling {
    uint public num;

    constructor() {
        num = 0;
    }

    function testRequire(uint _num) public {
        require(_num > 10, "Input number must be greater than 10");
        num = _num;
    }

    function testAssert() public view {
        assert(num > 10);
    }

    function testRevert() public pure {
        if (false) {
            revert("Error occurred");
        }
    }
}
