# Symmetric Cipher

-	It is a single key encryption. encryption and decryption are performed using the same key. It is also known as conventional encryption.
-	Symmetric encryption transforms plaintext into ciphertext using a secret key and a encryption algorithm. and using the same kay and decryption algorithm it transforms ciphertext to plaintext.
-	Attacks:
	-	Cryptanalysis
	-	Brute-force - trying all possible keys
-	There are basically two encryption techniques, substitution and transposition.

## **Substitution**
-	In this techniques plaintext are replaced by other letters, numbers or symbols.
-	**1. Caesar / Julius Cipher**
	-	This involves replacing each letter with letter standing three places further in alphabet and alphabet is wrapped around.
	-	Attack - brute-force cryptanalysis is easily apply with 25 possible keys.

-	**2. Monoalphabetic Ciphers**
	-	A single cipher alphabet is used per message.
	-	Attack - relative frequency of letters.

-	**3. Playfair Cipher**
	-	It is based on 5 x 5 matrix of letters. the matrix is constructed by filling the letters (remove duplicates) from left to right and from top to bottom and filling the remainder of the matrix with the remaining letters in alphabetic order.
	-	The letter I/J count as a one letter.
	-	Attack - Because the structure of the plaintext language intact.

-	**4. Hill Cipher**
	-	Linear Algebra -
	```
		M(M^-1) = M^-1M = I. Where M is matrix, M^-1 is inverse of matrix M and I is identity matrix.
	```
	
	-	Determinant -
	```
		2 x 2 -> k11 * k22 - k12 * k21
		3 x 3 -> k11 * k22 * k33 + k21 * k32 * k23 + k31 * k12 * k23 - k31 * k22 * k13 - k21 * k12 * k33 - k11 * k32 * k23
	```
	
	-	If a square matrix M has a nonzero determinant, then the inverse of the matrix is computed as [M^-1]i*j = (det M)^-1(-1)^i+j(Dj*i) where Dj*i is subdeterminant formed by deleting jth row and ith column of M.
	-	Hill encryption algorithm takes m sucessive plaintext letters and substitues for them m ciphertext letters. the substitution is determined by m linear equations in which each character is assigned a numberic value.

	```
		C = PK mod 26

		c1 = (k11p1 + k12p2 + k13p3)mod26
		c2 = (k21p1 + k22p2 + k23p3)mod26
		c3 = (k31p1 + k32p2 + k33p3)mod26

		Decryption requires inverse of the matrix K.

		C = E(K, P) = PK mod 26
		P = D(K, C) = CK^-1 mod 26 = PKK^-1
	```
	-	Attack - Although this is strong, It is easily broken with a known plaintext attack.

-	**5. Polyalphabetic Cipher**
	-	It is impoved monoalphabetic cipher technique. It is used different monoalphabetic substitutions as proceeds with plaintext message.
	```
		Vigenere Cipher -
		C = C0, C1, C2, ... = E(K, P) = E [(k0, k1, k2, ...), (p0, p1, p2, ...)] = (p0 + k0) mod 26, (p1 + k1) mod 26 + ...

		Ci = (Pi + Kimodm) mod 26
		Pi = (Ci - Kimodm) mod 26

		Vernam Cipher -
		Ci = Pi XOR Ki
	```
	-	Attack - Can be broken with sufficient ciphertext, the use of known or probable plaintext sequences.

-	**6. One-Time Pad**
	-	Each new message requires a new key of the same length as the new message.


## **Transposition**
-	In this technique mapping is achived by performing some sort of permutations on the plaintext letters.
-	**1. Rail Fence**
	-	The plaintext is written down as a sequence of diagonals and then read of as a sequence of rows.
	```
		e.g. "this is simple text"
		t i i s m l t x
		h s s i p e e t
	```
	-	The more complex technique is to written as a rectagle sequence.
	-	Attack - Pure transposition cipher is easily recognized because it has same letter frequency.

-	**Rotor Machines**
	-	It is a multiple stages of encryption.

-	**Block Cipher and Data Encryption Standard (DES)**
	-	A block cipher is an encryption and decryption technique in which a block of plaintext is consider as a whole and produce ciphertext block with same length.
	-	The Feostel Cipher -
		-	The use of cipher that alternates substitutions and permutations.
		-	Substitution - each plaintext is uniquely replaced by a corresponding ciphertext.
		-	Permutation - a sequence of plaintext elements is replaced by permutation of that sequence.

	-	DES -
		-	Encryption -
			-	There are two inputs to the encryption function, the plaintext must be of 64 bits and the key is 56 bits.
				-	Left (32 bits), Right (32 bits), Round key R (48 bits)
				```
					Li = Ri-1
					Ri = Li-1 XOR F(Ri-1,ki)
				```
		-	Decryption -
			-	Decryption uses the same algorithm as encryption, except that subkeys application is reversed.

		-	Strengths -
			-	Use of 56 bits key - 2^56 possible keys

	-	Double DES
	-	Triple DES with two keys
	-	Triple DES with three keys

-	**Advanced Encryption Standard (AES)**
	-	AES is block cipher to replace DES. It uses 128 bits block size and a key size of 128, 192 or 256 bits.
	-	AES does not uses Feistel Structure, Instead it has four seperate functions: byte substitution, permutation, arithmetic operation and XOR with a key.
