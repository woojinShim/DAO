// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/governance/TimelockController.sol";

contract TimeLock is TimelockController {
    // minDelay: 실행 전 얼마나 기다릴지 정함
    // proposers: propose 할수있는 주소 리스트
    // executors: proposal 패스 시 실행할 수 있는 사람
    constructor(
        uint256 minDelay,
        address[] memory proposers,
        address[] memory executors
    ) TimelockController(minDelay, proposers, executors)
}