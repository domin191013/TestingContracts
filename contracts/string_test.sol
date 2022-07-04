// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import "./string.sol";

contract StringTest {
    Strings foo;

    function beforeAll() public {
        foo = new Strings();
    }

    function initialValueShouldBeHello() public returns (bool) {
        return keccak256(abi.encodePacked(foo.get())) == keccak256(abi.encodePacked('Hello'));
    }

    function initialValueShouldNotBeHelloWorld() public returns (bool) {
        return keccak256(abi.encodePacked(foo.get())) == keccak256(abi.encodePacked('Hello world'));
    }
}
