// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Voting {
    address public admin;
    uint public candidateCount;

    struct Candidate {
        uint id;
        string name;
        uint voteCount;
        bool isActive;
    }

    mapping(uint => Candidate) public candidates;
    mapping(address => bool) public hasVoted;

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    function addCandidate(string memory name) public onlyAdmin {
        candidateCount++;
        candidates[candidateCount] = Candidate(candidateCount, name, 0, true);
    }

    function deleteCandidate(uint candidateId) public onlyAdmin {
        require(candidateId > 0 && candidateId <= candidateCount, "Invalid candidate ID");
        candidates[candidateId].isActive = false;
    }

    function vote(uint candidateId) public {
        require(!hasVoted[msg.sender], "You have already voted.");
        require(candidateId > 0 && candidateId <= candidateCount, "Invalid candidate ID");
        require(candidates[candidateId].isActive, "Candidate is inactive");

        hasVoted[msg.sender] = true;
        candidates[candidateId].voteCount++;
    }

    function getCandidate(uint candidateId) public view returns (string memory name, uint voteCount, bool isActive) {
        Candidate memory c = candidates[candidateId];
        return (c.name, c.voteCount, c.isActive);
    }

    function getTotalCandidates() public view returns (uint) {
        return candidateCount;
    }
}
