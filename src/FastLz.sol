// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { LibZip } from "@solady/utils/LibZip.sol";

contract FastLz {
    function fastLz(bytes memory _data) public pure returns (uint256) {
        return LibZip.flzCompress(_data).length;
    }
}
