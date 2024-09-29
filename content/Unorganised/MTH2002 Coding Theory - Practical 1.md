#math #mth2002 #practical

![[../Auto-Generated/Attachments/MTH2002 Coding Theory - Practical 1.pdf]]

---
## Problem P1

*Prove that there are an unlimited number of codes.*

### Part A

We can recall the definition of a code as follows...

![[Definition of a Code in Coding Theory]]

### Part B

Given a natural number $q\in N$, we can define the following alphabet...

$$
A_{q} = \set{0,1,\ldots,q-1}\equiv \mathbb{Z}/q\mathbb{Z},\text{or }\mathbb{F}_{q}\text{ if }q\text{ is a prime number.}
$$

Since there are infinitely many natural numbers, there are infinitely many distinct sets $A_{q}$ that could be a potential alphabet for a code.

### Part C

We can recall the definition of a Cartesian product as follows...

![[Definition of a Cartesian Product in Coding Theory]]

Based on this, we can determine the number of elements of the Cartesian product $A_{n}$ as $q\times q\times\ldots\times q=q^{n}$, where $q$ is the number of elements in the set $A$ and $n$ is the number of sets in the Cartesian product. This is because for each of the $n$ positions in the ordered pair, there are $q$ choices, leading to the aforementioned total.

### Part D

Again recalling the definition of a code...

![[Definition of a Code in Coding Theory]]

We can explain that for any value of $x\in N$, we can always define at least one code that has at least $x$ elements (codewords), as we can always define an alphabet $A$ with any number $q$ symbols as previously proven.

## Problem P2

*Designing a code*

Encode single instructions in English, e.g. "skip", whose length is at most 10. It suffices that it detects and corrects 1 error.

### Part A

The alphabet should include all English letters, so...

$$
A=\set{a,b,c,d,e,f,\ldots,x,y,z,\emptyset}:q=27,n=10
$$

### Part B

A code could simply repeat each element once per transmission, where it can fill the word to ten characters with empty space $\emptyset$. Thus, every message will be $n=10$ and $n=20$ when encoded, e.g. `skip      ` -> `sskkiipp            `.

### Part C

Checking this code, if there is a single error in `sskkiipp            `, e.g. `ssckiipp            `, then we can detect where the error is, but not what the correct symbol most be. Hence, we must repeat it three times and whichever symbol shows 2 or more times out of the 3 is the correct symbol:

`skip      ` -> `ssskkkiiippp                  `.

Thus the final code $C$ can be defined as:

> Given a word with $n\le10$ symbols, $w=w_{1}w_{2}\ldots w_{n}$, complete $w$ to have $10$ symbols be completing it with symbol $\emptyset$ for empty space, hence $w$ will have $10-n$ empty space symbols $\emptyset$ before encoding. After encoding, It'll have $30-3n$ empty space symbols and $30$ total symbols, as the encoding process repeats each symbols twice, so $w_{e}=w_{1}w_{1}w_{1}w_{2}w_{2}w_{2}\ldots w_{n}w_{n}w_{n}$.

## Problem P3

*Finding the chance of errors.*

Given that the error probability $p=0.000000001$ for transmission, we can calculate the chance of an arbitrary message $m$ being sent without errors, given that $|m|=n$ is the length of the message, as $(1-p)^{n}$, as an error could happen in each symbol. Hence, the probability of success is $0.999999999^n$ which is still roughly $0.9999999$ after even $100$ symbols. This is very high.

## Problem P4

*Finding Hamming distances.*

Recall the set $\mathbb{F}_{q}=\set{0,1,\ldots, q-1}$ when $q$ is prime number.

### Part A

Given the word $01010$ there are the following words with an exact Hamming distance of two:
$$
\begin{align*}
00000\\
00011\\
00110\\
01001\\
01100\\
01111\\
10010\\
11000\\
11011\\
11110\\
\end{align*}
$$
The total words with a Hamming distance of two, given an alphabet $q=2$ and word length $n=5$, are $\binom{5}{2} = \frac{5!}{2!(5-2)!} = \frac{5 \times 4}{2 \times 1} = 10$.

### Part B

Given the alphabet $\mathbb{F}_{5}$, the Hamming distance between:
$$
\begin{align*}
032314\\
221444
\end{align*}
$$
is $5$.

## Problem H1

*ISBN-10 is an $11$-ary code of length $10$ defined as*
$$
C=\set{(x_{1},x_{2},\ldots,x_{i})\in \mathbb{F}_{11}^{10}:x_{10}=\sum\limits_{k=1}^{9}kx_{k},x_{k}\lt10\text{ for }k\le9},
$$
*where the symbol $10$ is typically denoted by the capital letter $X$. Note that the last symbol is should equal $C \text{ modulo } 11$.*

### Part A

$013139\square399$ has a missing digit $\square$, which can be recovered by creating an equation based on $C$ that can be solved to find the unknown digit:
$$
\begin{align*}
&0\cdot0+1\cdot1+2\cdot3+3\cdot3+4\cdot9+5\cdot x+6\cdot3+7\cdot9+8\cdot9+9\cdot9\\
&= 0+1+6+9+36+5x+18+63+72+81\\
&= 286+5x\\
&= 5x \text{ mod }11
\end{align*}
$$
Given that this value should equal the last symbol, $5x\equiv9\text{ mod }11\iff x=4$.

A similar process can be used with $0023299\square00$:
$$
\begin{align*}
&0\cdot0+1\cdot0+2\cdot2+3\cdot3+4\cdot2+5\cdot0+6\cdot0+7\cdot x+8\cdot0+9\cdot0\\
&= 0+0+4+9+8+0+0+7x+0+0\\
&= 21+7x\\
&= 7x-1 \text{ mod }11\\
\end{align*}
$$

Then we can determine that $7x-1\equiv0\text{ mod }11\iff x=8$.

### Part B

An example of when the last symbol is $X$ could be:
$$
100000001X
$$
This is probably the simplest example.