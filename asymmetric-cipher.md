# Asymmetric Cipher

Asymmetric cryptosystem in which encryption and decryption are performed using different keys. one is public key and another is private. It is also known as public key encryption.
The most widely used public key cryptosystem is RSA.

	First problem with symmetric cipher is key distribution and second probable was digital signature.

	- Plaintext
	- Encryption algorithm
	- Public and private keys
	- Ciphertext
	- Decryption algorithm

	All parties have access to public keys and private keys are created locally by each party.

	C = E(PUa, P)
	P = D(PRa, C)

-	**Digital Signature (Authentication)**
	It is not possible to change messgae without A's private key.
	C = E(PRa, P)
	P = D(PUa, C)

	-	**Authentication & Security**
	C = E(PUb, E(PRa, P))
	P = D(PRb, D(PUa, C))

	Attack -
	1. Brute-force
	2. To compute the private key for a given public key.
	3. Probable message attack

-	**RSA Algorithm**
	The RSA technique is a block cipher in which plaintext and ciphertext are intergers betweeen 0 to n-1.

	C = P^e mod n
	P = C^d mod n = (P^e)^d mod n = P^ed mod n

	both sender and receiver must know value of n, sender knows the the value of e and receiver knows the value of d.

	Public key - PU = {e, n} and Private key - PR = {d, n}

	Attack -
	1. Brute-force
	2. Mathematical attack
	3. Timing attack
