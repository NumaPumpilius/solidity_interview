## Task 1: Reentrance

The goal is to steal all the funds from the contract Reentrance contract. You cannot modify Reentrance contract. Create a local test that proves your ability to steal funds from the contract.

# Task 2: Upgradeable Factory

Your goal is to create a factory of upgradeable MockVault contracts. Complete the UpgradeableFactory contact such that it adheres to the IUpgradeableFactory interface. 

The factory should be able to:

* create new MockVault contracts
* upgrade all MockVault contracts created by the factory to new implementation (with the ability to pass initializer data)
* downgrade all MockVault contracts created by the factory to previous implementation (with the ability to pass initializer data)


# Task 3: Hell Func

Your goal is to mint yourself a Hell Func NFT. Deploy HellSpawnFuncCaller on local Anvil and mint yourself an Hell Func NFT. You cannot modify HellSpawnFuncCaller or HellSpawnFunc
