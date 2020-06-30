# Ethereum

-	Ethereum is an open source decentralized computing infrastructure that executes Smart Contracts.
-	Ethereum is used to built decentralized applications with high availability, auditability, transparency, and neutrality.
-	Ethereum has memory that stores both code and data.

## Ethereum’s Components
-	P2P network (TCP port #30303)
-	Consensus rules
-	Transactions
-	State machine (Ethereum Virtual Machine (EVM))
-	Data structures
	-	State is stored locally on each node as a database which contains transitions and system state in a serialized hashed data structures (Merkle Tree).
-	Consensus algorithm
	-	PoW (Ethash)
	-	PoS (Casper)

## Decentralized Applications (DApps)
-	Smart contracts
-	Front end user interface
-	Decentralized (P2P) storage protocol and platform
-	Decentralized (P2P) messaging protocol and platform

## Ethereum Wallet
-	It is a software application used to manage ethereum account. It is a gateway to ethereum system.
-	Three types of wallets 
	-	Mobile
	-	Desktop
	-	Web-based
-	Examples 
	-	MetaMask
	-	Jaxx
	-	MyEtherWallet
	
## Ethereum networks
-	Main Ethereum Network
-	Ropsten Test Network
-	Kovan Test Network
-	Rinkeby Test Network
-	Localhost
-	Custom RPC

## Ethereum cryptography
-	Private Keys
	-	Ethereum uses random number generator to generate 256 bits private key. It is a offline process.
-	Public Keys
	-	Ethereum public key is an point on the elliptic curve that is x and y coordinate which satisfy the elliptic curve equation.
	-	x aand y are produced from the private key by math calculations.
	-	We cannot calculate private key from public key.
	```
		K = k * G 
			where k is private key and G is generator point.
		K is public key.
		-	this is one-way math function
	```
-	Ethereum uses same elliptic curve called secp256k1. Curve is defined over a finite filed of prime numbers. 
-	Keccak-256
	-	Ethereum uses Keccak-256 SHA-3 cryptographic hash function.
	
## Ethereum addresses
-	Addresses are unique identifiers and derived from public key or Keccak-256 hash function.
-	It is a hexadecimal number derived from last 20 bytes of Keccak-256 hash.

