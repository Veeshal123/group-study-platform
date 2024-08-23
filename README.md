<img src="https://github.com/user-attachments/assets/3b9d3cad-a448-4496-a6e7-83a2ff19a0e3" width="300">

# Study Group Formation

## Vision

The Study Group Formation smart contract aims to facilitate the creation and management of study groups on the blockchain.
It allows users to create study groups for various courses and subjects, contribute to these groups, and earn rewards for their contributions.
This system promotes collaborative learning and incentivizes active participation in study groups.

## Features

1. **Study Group Creation**
   - Users can create new study groups for specific courses and subjects.
   - Each group includes a description, course, and subject, along with the creator's address.

2. **Contribution System**
   - Users can add contributions (e.g., content, notes) to any study group.
   - Contributions are recorded with the contributor's address and a timestamp.

3. **Contribution Tracking**
   - The contract tracks the number of contributions made to each study group.
   - Contribution history is accessible for each group.

4. **User Rewards**
   - Users earn rewards for each contribution they make to a study group.
   - The reward rate is predefined and allocated per contribution.

5. **User Group Management**
   - Users can view the study groups they have created.
   - Each user's associated groups are tracked and stored.

6. **Reward Withdrawal**
   - Users can withdraw their accumulated rewards.
   - The contract includes a function for users to withdraw their rewards (for future token integration).

7. **Contract Funding**
   - The contract can receive and hold funds, preparing it for future token reward distribution.
   - Users can fund the contract, ensuring there are sufficient rewards available for distribution.

## Flowchart
```
+------------------+       +---------------------+
|   Create Group   |       |   Add Contribution   |
+------------------+       +---------------------+
           |                        |
           V                        V
+------------------+       +---------------------+
|   Group Created  |       |   Contribution Added |
+------------------+       +---------------------+
           |                        |
           V                        V
+------------------+       +---------------------+
| Get User Groups  |       | Get Contributions    |
+------------------+       +---------------------+
           |                        |
           V                        V
+------------------+       +---------------------+
|   User Groups    |       |  Group Contributions |
+------------------+       +---------------------+
```

## Contract Address

- **Educhain Contract Address**: 0x1050440adeDd39522c4570d198f936Ee87E4e96f

![image](https://github.com/user-attachments/assets/9eddb056-f22a-408d-9bf9-8f966e5b371e)


## Future Scope

1. **Token Integration**: Implement a token standard (e.g., ERC20) for reward distribution and contract funding.
2. **Enhanced Rewards System**: Introduce dynamic reward rates based on contribution quality or group activity.
3. **User Roles**: Implement roles such as group moderators or administrators with additional permissions.
4. **Governance Features**: Allow users to vote on changes or improvements to the contract.
5. **User Interface**: Develop a web or mobile application for a user-friendly interface to interact with the contract.

## Contact

For questions or further information, please contact:

- **Developer**: Veeshal D Bodosa
- **Email**: veebodosa@gmail.com
- **GitHub**: https://github.com/Veeshal123
- **LinkedIn**: https://www.linkedin.com/in/veeshal-bodosa-b09b71297
