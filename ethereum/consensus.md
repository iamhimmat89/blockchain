# Consensus

-	Different participants in a distributed system all agree on a single system-wide state. 
-	Consensus algorithms are the mechanism used to reconcile security and decentralization.


## Proof of Work (PoW) (Ethash)
-	PoW / mining, is to secure the blockchain, while keeping control over the system decentralized and diffused across as many participants as possible.
-	The reward of newly minted currency is an incentive to those who contribute to the security of the system: a means to an end.
-	In PoW consensus there is also a corresponding "punishment", which is the cost of energy required to participate in mining.
-	Ethash
	-	There exists a seed which can be computed for each block by scanning through the block headers up until that point.
	-	From the seed, one can compute a 16 MB pseudorandom cache. Light clients store the cache.
	-	From the cache, we can generate a 1 GB dataset, with the property that each item in the dataset depends on only a small number of items from the cache. Full clients and miners store the dataset. The dataset grows linearly with time.
	-	Mining involves grabbing random slices of the dataset and hashing them together. Verification can be done with low memory by using the cache to regenerate the specific pieces of the dataset that you need, so you only need to store the cache.


## Proof of Stake (PoS)
-	Consensus algorithms based on financial stake.
-	The blockchain keeps track of a set of validators, and anyone who holds the blockchain’s base cryptocurrency (in Ethereum’s case, ether) can become a validator by sending a special type of transaction that locks up their ether into a deposit.
-	The validators take turns proposing and voting on the next valid block, and the weight of each validator’s vote depends on the size of its deposit (i.e., stake).
-	A validator risks losing their deposit if the block they staked it on is rejected by the majority of validators.

