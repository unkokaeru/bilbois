Given a code $C\subset A^{n}$ over an alphabet $A$ and a word $w\in A^{n}$, a (valid) codeword $c\in C$ is called a **nearest neighbour codeword** to $w$ if
$$
d(c,w)=\text{min}\set{d(w,x):x\in C}
$$
The **nearest neighbour decoding strategy** is the strategy of choosing a nearest neighbour codeword to a word received (possibly in error) in a transmission.

**Note**: there may be more than one nearest neighbour codeword!