# Decentralized Applications (DApps)

-	Resiliency: the business logic is controlled by a smart contract, a DApp backend will be fully distributed and managed on a blockchain platform.
-	Transparency: allows everyone to inspect the code and be more sure about its function.
-	Censorship resistance: the user will always be able to interact with a DApp without interference from any centralized control.


## Backend (Smart Contract)
-	In a DApp, smart contracts are used to store the business logic (program code) and the related state of your application.
-	Any computation executed in a smart contract is very expensive and so should be kept as minimal as possible. It is therefore important to identify which aspects of the application need a trusted and decentralized execution platform.
-	A network of smart contracts call and pass data between each other, reading and writing their own state variables as they go, with their complexity restricted only by the block gas limit.
-	One major consideration of smart contract architecture design, the inability to change the code of a smart contract once it is deployed. It can be deleted if it is programmed with an accessible SELFDESTRUCT opcode, but other than complete removal, the code cannot be changed in any way.
-	The second major consideration of smart contract architecture design, DApp size. A really large monolithic smart contract may cost a lot of gas to deploy and use. Therefore, some applications may choose to have off-chain computation and an external data source.


## Frontend (Web User Interface)
-	A DApp can use standard web technologies (HTML, CSS, JavaScript, etc.)
-	Interactions with Ethereum, such as signing messages, sending transactions, and managing keys, are often conducted through the web browser, via an extension such as MetaMask.
-	The frontend is usually linked to Ethereum via the web3.js JavaScript library, which is bundled with the frontend resources and served to a browser by a web server.


## Data Storage
-	Due to high gas costs and the currently low block gas limit, smart contracts are not well suited to storing or processing large amounts of data. Hence, most DApps utilize off-chain data storage services, meaning they store the bulky data off the Ethereum chain, on a data storage platform.
-	Decentralized P2P storage is ideal for storing and distributing large static assets such as images, videos, and the resources of the application’s frontend web interface (HTML, CSS, JavaScript, etc.).
-	**IPFS**
	-	The Inter-Planetary File System (IPFS) is a decentralized content-addressable storage system that distributes stored objects among peers in a P2P network.
	-	Each piece of content (file) is hashed and the hash is used to identify that file. You can then retrieve any file from any IPFS node by requesting it by its hash.
-	**Swarm**
	-	It allows you to store files that get disseminated and replicated by Swarm nodes. You can access any Swarm file by referring to it by a hash. Swarm allows you to access a website from a decentralized P2P system, instead of a central web server.
-	**Decentralized Message Communications Protocols**
	-	inter-process communication
	-	The P2P messaging protocol for DApps is Whisper, which is part of the Ethereum Foundation’s Go-Ethereum suite of tools.
	

## The Ethereum Name Service (ENS)
-	Allows us to use human-readable names in the browser while resolving those names to IP addresses or other identifiers behind the scenes
-	ENS is supported by a number of DApps for registration, management, and auctions of registered names.

