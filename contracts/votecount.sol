// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Voting {
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    address public admin;
    uint public totalCandidates;
    mapping(uint => Candidate) public candidates;
    mapping(address => bool) public hasVoted;

    constructor(string[] memory candidateNames) {
        admin = msg.sender;
        for (uint i = 0; i < candidateNames.length; i++) {
            candidates[i + 1] = Candidate(i + 1, candidateNames[i], 0);
            totalCandidates++;
        }
    }

    function vote(uint candidateId) public {
        require(!hasVoted[msg.sender], "Already voted");
        require(candidateId > 0 && candidateId <= totalCandidates, "Invalid candidate");

        candidates[candidateId].voteCount++;
        hasVoted[msg.sender] = true;
    }

    function getCandidate(uint candidateId) public view returns (string memory name, uint voteCount) {
        Candidate memory c = candidates[candidateId];
        return (c.name, c.voteCount);
    }

    function getTotalCandidates() public view returns (uint) {
        return totalCandidates;
    }
}
