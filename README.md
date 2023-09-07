# Error Handling in Solidity

## Project Requirements

1. Functionality
 * Contract successfully uses require()
 * contract successfully uses assert()
 * contract successfully uses revert() statements
2. Explanation
 * Code read-alound is submitted
 * Code read-aloud is complete (all steps explained)
 * Code read-aloud is clear and understandable

### ErrorHandling.sol

```Solidity
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

```


##  require() 
The require() statement validates if a certain condition is met, if not it reverts the transaction.
* Here I am using require() to check if the input _num is greater than 10.

## assert()

The assert() statement tests for a condition, if false it causes an invalid opcode and reverts. 
* Here I assert that num is greater than 10.

## revert()

The revert() statement is used to manually revert a transaction and provide an error message.
* Here I simply revert with a custom error message.

### Summary

   * require() validates conditions and reverts if false
   * assert() tests for conditions and reverts if false
   * revert() manually reverts the transaction refunding any unspent gas

These are useful for validating inputs, avoiding invalid states, and reverting on errors in Solidity smart contracts.

## Authors

Joseph "ZenKodr" Martinez 
Student at [@metacraftersio](https://twitter.com/metacraftersio)
