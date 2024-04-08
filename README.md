## Task 1: Upgradeable Factory

Your goal is to create a factory of upgradeable MockVault contracts. Complete the UpgradeableFactory contact such that it adheres to the IUpgradeableFactory interface. 

The factory should be able to:

* create new MockVault contracts
* upgrade all MockVault contracts created by the factory to new implementation (with the ability to pass initializer data)
* downgrade all MockVault contracts created by the factory to previous implementation (with the ability to pass initializer data)

Create foundry tests that prove that all functionality is implemented correctly.


## Task 2: Hell Func

Your goal is to mint yourself a Hell Func NFT. Deploy HellSpawnFuncCaller on local Anvil and mint yourself an Hell Func NFT. You cannot modify HellSpawnFuncCaller or HellSpawnFunc

## Task 3: Vulnerability

Your goal is to steal funds from the VulnerableLender contact. The contract uses VulnerableLiquidityPool as a price feed. VulnerableLiquidityPool is a simplified AMM DEX for ETH-SyntheticETH pair that issues LPTokens for the provided liquidity. You can find LPToken and SyntheticETH contracts in the periphery folder. 

* Create an Attacker contract that exploits the existing vulnerability
* Create a Foundry Test that proves the Attacker contract ability to steal funds from the VulnerableLender contact
