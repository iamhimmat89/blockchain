# Ethereum Wallet

-	It is a software application used to manage ethereum account. It is a gateway to ethereum system.
-	The wallet control access to money, managing keys and addresses, tracking transactions.
-	The most convenient wallet is having single private key and address to reuse for everything. However, anyone can esily track all the transactions. Using new key for each transaction is best as privacy but it's very difficuult to manage. 
-	The wallet contains only keys not ether or tokens. Ether and tokens are store on ethereum blockchain. 
-	Only keys are needed to transfer ether or tokens.
-	There are two types of wallets
	-	nondeterministic / random wallet
		-	each key is independently generated.
	-	deterministic / seeded wallet
		-	 all the keys are derived from a single master key known as seed.


## Nondeterministic Wallet
-	Ethereum clients use keystore file (JSON-encoded file) contains single private key, encrypted by passphrase. 
-	The keystore format uses  key derivation function (KDF) / password stretching algorithm to protects against brute-force, dictionary, and rainbow table attacks. that means private key is not encrypted by passphrase directly instead passphrase is stretched by repeatedly (262,144 rounds) hashing it. 


## Deterministic Wallet
-	The seed is randomly generated number combined with other data. It is sufficient to recover all the derived keys. 
-	The security of seed is most important, only seed is needed to access entire wallet.

	### Hierarchical Deterministic (HD) Wallets (BIP-32/BIP-44)
	-	HD wallets contains keys derived in tree structure such as parent key can derive child keys and child key can derive grandchild keys etc.
		
	### Seeds and Mnemonic Codes
	-	The method is used to encrypt private key for backup and retrive. It is using a sequence of words can taken together in correct order, can uniquely recreate the private key. this is called mnemonic.
	-	Mnemonic code words (BIP-39)
		-	Create random sequence of S of 128 to 256 bits.
		-	Create checksum of S (first length-of-S ÷ 32 bits of the SHA-256 hash).
		-	Add checksum to the end of the random sequence S.
		-	Divide sequence and checksum into sections of 11 bits.
		-	Map each 11 bit value to word from predefined dictionary.
		-	Create mnemonic code from the sequence of words with given order.
	-	From mnemonic to seed
		-	The mnemonic words represent entropy with a length of 128 - 256 bits.
		-	The entropy is then used to derive a longer seed through the use of the key-stretching function PBKDF2.
		-	The first parameter to the PBKDF2 key-stretching function is the mnemonic code.
		-	The second parameter to the PBKDF2 key-stretching function is a salt. The salt is composed of the string constant "mnemonic" concatenated with an optional user-supplied passphrase.
		-	PBKDF2 stretches the mnemonic and salt parameters using 2,048 rounds of hashing with the HMAC-SHA512 algorithm, producing a 512-bit value as its final output. That 512-bit value is the seed.
		
		- Optional passphrase
			-	It is protecting mnemonic backups and used to distract an attacker from the real wallet.
			
	-	HD wallets are created from single root seed (128, 256 or 512 bit random number).
	
	-	Extended public and private keys
		-	extended parent key can be used to derive child keys. A parent key does not have to be at top. 
		-	It involves taking key and appending special chain code (256-bit binary string).
		-	extended private key start with prefix xprv and public key start with prefix xpub.
		-	It has ability to derive child public keys from parent public key without private key.
		
	-	Hardened child key derivation
		-	It breaks the relationship between parent public key and child chain code to reduce risk. 
		-	The hardened derivation function uses the parent private key to derive the child chain code, instead of the parent public key.
		
	-	Keys in the HD wallet are identified using a path naming convention. 
	-	Private keys derived from the master private key start with m and public keys derived from the master public key start with M.
	-	The first child private key of the master private key is m/0 and the first child public key is M/0.
