pragma solidity ^0.4.2;

contract Election{
    
    struct Candidate{
        uint id;
        string name;
        uint voteCount;
    }

    mapping(uint => Candidate) public candidates;

    uint public candidateCount;

    function addCandidate(string _name) private{
        candidateCount++;
        candidates[candidateCount] = Candidate(candidateCount, _name, 0);
    }

    function Election() public{
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

}