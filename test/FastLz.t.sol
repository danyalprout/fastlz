// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {FastLz} from "../src/FastLz.sol";

contract FastLzTest is Test {
    FastLz public compressor;

    function setUp() public {
        compressor = new FastLz();
    }

    function test_fastLzInvocation() view public {
        bytes memory data = hex"0000010203";
        uint256 length = compressor.fastLz(data);
        assertEq(length, 6);
    }
}
