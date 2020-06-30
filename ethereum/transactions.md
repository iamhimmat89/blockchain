# Transactions

-	Transactions are signed (serialized) messages, transmitted by the ethereum network and recorded on the ethereum blockchain.
-	Ethereum does not start autonomously, everything starts with a transaction (a change of state). 
-	Ethereum allow concurrency of operations but enforces a singleton state through consensus.

-	Client / Application will store serialized transaction in memory with it's own internal data structure. 
-	A transaction contains below data:
	-	Nonce
		-	a sequence number, issued by the originating EOA, used to prevent message replay.
		-	number of transaction or contract created by the account.
		-	it is calculated dynamically, by counting number of confirmed transactions from an address.
		-	e.g. you want to make 2 payments one with 10 ethers and another with 15 ethers. you sign and broadcast first transaction with 10 ether and then second transaction with 15 ether but unfortunatly you have only 20 ethers in your wallet and first transaction is important for you. In this case any of the transaction gets fail because some node receive 10 ether transaction and some receive 15 ether transaction in decentralized system to verify and add to the blockchain. If you include nonce with transaction then one transaction will wait until transaction with less nonce to complete first. 
		-	every transaction is unique even when sending same amount of ether to same account multiple times. since it is not possible to duplicate a payment.
		-	the first transaction has nonce zero.
		-	when you create new transaction, that will assign next nonce but until it is confirmed it will not count in getTransactionCount.
		-	If any of the nonce in sequence is not included in any block officially then all subsequent transactions will be stuck, waiting for the missing nonce. to keep things moving you have to add valid transaction with missing nonce.

	-	Gas
		-	Gas is not ether, it's a another virtual currency. 
		-	Gas Price, that originator is willing to pay. The higher the gas price, the faster the transaction likely to be confirmed. 
		-	the minimum value (gasPrice) set to zero. 
		-	Gas Limit, the maximum amount of gas originator is willing to buy.
		
	-	Recipient
		-	the destination ethereum address (20-bytes). it does not validate recipient addresses in transactions. Validation of address should be done at user interface level.  
		
	-	Value & Data
		-	Transactions can have, both value and data (payment & invocation), only value (payment), only data (invocation), neither value nor data (waste of gas) 
		-	the amount of ether (value) to send to the destination
		
	-	Digital Signature
		-	Elliptic Curve Digital Signature Algorithm (ECDSA)
			-	authentication, the signature proves that the owner of the private key (has authorized to spend ether or execute contract)
			-	non-repudiation, the sender cannot deny having sent the message
			-	integrity, the transaction data cannot be modified by anyone after it has been signed
			
	-	v r s
		-	cryptographic pieces of data that can be used to generate the senders account address. Generated from the sender's private key.
	
-	the transaction message structure is serialized using the Recursive Length Prefix (RLP) encoding scheme. RLP does not contain any field delimiters RLP's length prefix is used to identify the length of each field. 

