# Smart Contracts

-	Smart contracts are computer programs.
-	Immutable - once deployed, code of smart contract can not be changed. however contract can be deleted (EVM opcode called SELFDESTRUCT).
-	Deterministic - the outcome of execution of smart contract is the same for each run.
-	EVM context - smart contracts operates with very limited execution context. 
-	Decentralized 


## Smart Contract Life Cycle 
-	Smart contracts should be compiled to the low level bytecode that runs in EVM.
-	Each contract is identified by an ethereum address, which is derived from contract creation transaction as a function originating account and nonce.
-	The ethereum address of a contract can be used in a transaction as a recipient, sending funds to contract or calling one of the contract functions.
-	Contracts only run if they are called by a transaction. A contract can call another contract that can call another contract, and so on, but the first contract in such a chain of execution will always have been called by a transaction from an EOA.
-	Ethereum world computer can be considered to be a single-threaded machine so the smart contracts can not run in parallel.
-	Transactions are atomic, with any changes in the global state (contracts, accounts, etc.) recorded only if all execution terminates successfully. If execution fails due to an error, all of its effects (changes in state) are “rolled back” as if the transaction never ran. A failed transaction is still recorded as having been attempted, and the ether spent on gas for the execution is deducted from the originating account.


## Security
-	Best Practices
	-	Minimalism/simplicity
	-	Code reuse
	-	Code quality
	-	Readability/auditability
	-	Test coverage

-	Risks and Antipatterns
	-	Reentrancy
		-	Ethereum smart contracts can call and utilize code from other external contracts. Contracts also typically handle ether, to various external user addresses. These operations require the contracts to submit external calls. These external calls can be attacked (DAO-Decentralized Autonomous Organization Hack).
		-	Preventative Techniques
			1.	use the built-in transfer function when sending ether to external contracts. 
			2.	ensure that all logic that changes state variables happens before ether is sent out of the contract (performs external calls to unknown addresses to be the last operation).
			3.	a mutex, to add a state variable that locks the contract during code execution, preventing reentrant calls.
		
	-	Arithmetic Over/Underflows
		-	The Ethereum Virtual Machine specifies fixed-size data types for integers (uint8 [0,255]). Trying to store 256 into a uint8 will result in 0. 
		-	Over/Underflows occurs when an operation is performed that requires a fixed-size variable to store a number (or piece of data) that is outside the range of the variable’s data type.
		-	Preventative Techniques
			1.	use build mathematical libraries
			
	-	Unexpected Ether
		-	Self-destruct/suicide
		-	Pre-sent ether
		-	Preventative Techniques
			1.	typically arises from the misuse of this.balance. a self-defined variable should be used that is incremented in payable functions, to safely track the deposited ether
			
	-	Default Visibilities
		-	The default visibility for functions is public, so functions that do not specify their visibility will be callable by external users.
		-	Preventative Techniques
			1.	to always specify the visibility of all functions in a contract, even if they are intentionally public.
			
	-	Entropy Illusion
	
	-	External Contract Referencing
	
	-	Short Address/Parameter Attack
	
	-	Unchecked CALL Return Values
	
	-	Race Conditions/Front Running
		
	-	Denial of Service (DoS)

	-	Block Timestamp Manipulation
	
	-	Constructors with Care
	
	-	Floating Point and Precision
	
	-	Tx.Origin Authentication
		
		