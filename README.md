# DecentVote

DecentVote is a decentralized voting platform built using Ethereum smart contracts, Hardhat, and a web-based frontend. It allows users to participate in elections, vote for candidates, and manage election processes in a secure and transparent manner.

## Features

- **Candidate Management**: Add and delete candidates for elections.
- **Voting**: Cast votes for active candidates.
- **Admin Dashboard**: Manage elections, view statistics, and monitor activities.
- **Wallet Integration**: Connect with MetaMask for secure transactions.

## Technologies Used

- **Frontend**: HTML, CSS, JavaScript, Ethers.js
- **Backend**: Node.js, Express.js
- **Smart Contracts**: Solidity
- **Blockchain Framework**: Hardhat

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/akhleshydv/HackIndia-Spark-8-2025-Next-Loop.git
   ```

2. Navigate to the project directory:
   ```bash
   cd DecentVote
   ```

3. Install dependencies:
   ```bash
   npm install
   ```

4. Compile the smart contracts:
   ```bash
   npx hardhat compile
   ```

5. Deploy the smart contracts:
   ```bash
   npx hardhat run scripts/deploy.js --network <network-name>
   ```

6. Start the backend server:
   ```bash
   node backend/server.js
   ```

7. Open the frontend in your browser by opening `frontend/index.html`.

## Environment Variables

Create a `.env` file in the root directory and add the following:

```
PRIVATE_KEY=<Your_Private_Key>
INFURA_API_KEY=<Your_Infura_API_Key>
ETHERSCAN_API_KEY=<Your_Etherscan_API_Key>
```

## Usage

1. Open the frontend in your browser.
2. Connect your MetaMask wallet.
3. Use the admin dashboard to manage candidates and elections.
4. Cast votes for active candidates.

## Smart Contract Details

- **Contract Name**: `Volting`
- **Functions**:
  - `addCandidate(string memory name)`: Adds a new candidate.
  - `deleteCandidate(uint candidateId)`: Deletes a candidate.
  - `vote(uint candidateId)`: Casts a vote for a candidate.

## Troubleshooting

- Ensure your MetaMask wallet is connected to the correct network.
- Verify that the smart contract is deployed and the address matches in the frontend.
- Check the browser console for error messages.

## License

This project is licensed under the MIT License.

