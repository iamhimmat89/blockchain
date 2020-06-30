# Cryptographic Hash Functions
-	A hash function accepts variable length block of size as input and generate fixed sized hash output. h = H(M).
-	Hash function needed for security applications is called as cryptographic hash function.
-	Determinism
	-	the same input message always produces the same hash output.
-	Verifiability	
	-	computing hash should have linear complexity.
-	Noncorrelation
	-	a small change in message will change hash value.
-	Irreversibility
	-	Should not possible to compute message from hash.
-	Collision protection
	-	Should not calculate same hash from different messages.


## Applications of Cryptographic Hash Functions

-	**Message Authentication**
	-	Used to verify the integrity of a message. It assures that data received are exactly as sent. When hash function is used to provide message authentication, the hash function value is called as message digest.

	```
		E(K, [M || H(M)])
		E(K, H(M))
		H(M || S)
		E(K, [M || H(M || S)])
	```
	
	-	Message authentication is achived using message authentication code (MAC) also known as keyed hash function. A MAC function takes as input a secret key and a data block and produces a hash value, this can be transmitted with protected message.

	-	If the integrity is of the message needs to be checked, the MAC function can be applied to the message and result compared with the stored MAC value.

-	**Digital Signature**
	-	The hash value of a message is encrypted with a user's private key. Anyone has user's public key can verify the integrity of a message that is associated with the digital signature.
	-	If confidentiality as well as digital signature then message plus private key encrypted hash code can be encrypted using symmetric secret key.

-	**Other Applications**
	-	One way password file -
		-	A hash of the password is stored than the password itself.
	-	Intrusion detection -

-	A collision occurs if we have different messages with same hash value.

## Secure Hash Algorithm (SHA) 
	-	SHA-1 -
		-	Digest Size - 160 bits
		-	Message Size - < 2^64
		-	Block Size - 512
		-	Word Size - 32
		-	Number of steps - 80

	-	SHA-256 -
		-	Digest Size - 256 bits
		-	Message Size - < 2^64
		-	Block Size - 512
		-	Word Size - 32
		-	Number of steps - 64

	-	SHA-384 -
		-	Digest Size - 384 bits
		-	Message Size - < 2^128
		-	Block Size - 1024
		-	Word Size - 64
		-	Number of steps - 80

	-	SHA-512 / SHA-2-
		-	Digest Size - 512 bits
		-	Message Size - < 2^128
		-	Block Size - 1024
		-	Word Size - 64
		-	Number of steps - 80
        
		-	Steps:
			-	1. Append padding bits
			-	2. Append length (block)
			-	3. Initialize hash buffer
				-	A 512 bit buffer is used to store intermediate and final hash function result.
			-	4. Process message in 1024-bit blocks (80 rounds)
			-	5. Output

	-	SHA-3 -
		-	Security - collision resistance and preiamge resistance.
		-	Cost - both time and memory efficient.
