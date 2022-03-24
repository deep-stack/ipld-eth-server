// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

contract SLVToken {
    uint256 private countA;
    uint256 private countB;

    constructor() {}

    function incrementCountA() public {
        countA = countA + 1;
    }

    function incrementCountB() public {
        countB = countB + 1;
    }

    function resetCountA() public {
        countA = 0;
    }

    receive() external payable {}

    function destroy() public {
        selfdestruct(payable(msg.sender));
    }
}
