// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudyGroupFormation {

    struct StudyGroup {
        uint id;
        string course;
        string subject;
        string description;
        address creator;
        uint256 contributionCount;
    }

    struct Contribution {
        uint groupId;
        address contributor;
        string content;
        uint256 timestamp;
    }

    mapping(uint => StudyGroup) public studyGroups;
    mapping(uint => Contribution[]) public groupContributions;
    mapping(address => uint[]) public userGroups;
    mapping(address => uint256) public userRewards;

    uint public groupCount;
    uint public rewardRate;

    event StudyGroupCreated(uint id, string course, string subject, address creator);
    event ContributionAdded(uint groupId, address contributor, string content, uint256 timestamp);

    constructor(uint _rewardRate) {
        rewardRate = _rewardRate; // Reward rate in tokens per contribution
    }

    // Create a new study group
    function createStudyGroup(string memory _course, string memory _subject, string memory _description) public {
        groupCount++;
        studyGroups[groupCount] = StudyGroup(groupCount, _course, _subject, _description, msg.sender, 0);
        userGroups[msg.sender].push(groupCount);
        emit StudyGroupCreated(groupCount, _course, _subject, msg.sender);
    }

    // Add a contribution to a study group
    function addContribution(uint _groupId, string memory _content) public {
        require(_groupId > 0 && _groupId <= groupCount, "Study group does not exist");

        groupContributions[_groupId].push(Contribution(_groupId, msg.sender, _content, block.timestamp));
        studyGroups[_groupId].contributionCount++;
        userRewards[msg.sender] += rewardRate;

        emit ContributionAdded(_groupId, msg.sender, _content, block.timestamp);
    }

    // Get the contributions for a specific study group
    function getContributions(uint _groupId) public view returns (Contribution[] memory) {
        require(_groupId > 0 && _groupId <= groupCount, "Study group does not exist");
        return groupContributions[_groupId];
    }

    // Get the study groups created by a user
    function getUserGroups(address _user) public view returns (uint[] memory) {
        return userGroups[_user];
    }

    // Get the reward balance for a user
    function getUserRewards(address _user) public view returns (uint256) {
        return userRewards[_user];
    }

    // Withdraw rewards (for future token integration)
    function withdrawRewards() public {
        uint256 rewards = userRewards[msg.sender];
        require(rewards > 0, "No rewards to withdraw");
        userRewards[msg.sender] = 0;
        payable(msg.sender).transfer(rewards);
    }

    // Fund the contract (for future token integration)
    function fundContract() public payable {}
}
