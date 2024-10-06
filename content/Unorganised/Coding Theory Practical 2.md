![[../../../Auto-Generated/Attachments/Coding Theory Practical 2.pdf]]

---

## Problem P1
*Distance Theorem and Nearest Neighbour Decoding*

Considering the $3$-ary code:
$$
C=\set{00000, 11222, 22111}\subset \mathbb{F}^{5}_{3}
$$

### Part A

We can explain why $C$ can detect up to four errors by using the [[../Organised/Mathematics/Definitions/Definition of Distance Theorem|Definition of Distance Theorem]]. The minimum distance $d_{\text{min}}(C)=5$, by inspection, hence
$$
5\ge t+1\iff t\le 4
$$
Where $t$ errors are detected.

### Part B

Similarly, given that $d_{\text{min}}(C)=5$, we can use the [[../Organised/Mathematics/Definitions/Definition of Distance Theorem|Definition of Distance Theorem]] to explain why $C$ can correct up to two errors:
$$
5\ge2k+1\iff k\le 2
$$
Where $k$ errors are corrected.

### Part C

A word $w\in \mathbb{F}_{3}^{5}=\set{0,1,2}\text{ with length }5$ that has a Hamming distance exactly $3$ to two different codewords in $C$ is:
$$
12002
$$

### Part D

From the previous part, we can conclude that $C$ does not always correct three errors because the previous example could correct to either $00000$ or $11222$, hence having a $50\%$ chance of correction.

## Problem P2
*Error Correcting and Detecting*

Suppose you are starting to design a code $C$ that has to detect or correct a specific number of errors.

### Part A

Given that we have to detect up to $5$ errors, we can use the [[../Organised/Mathematics/Definitions/Definition of Distance Theorem|Definition of Distance Theorem]] to find the minimal distance $d_{\text{min}}(C)$ required:
$$
d_{\text{min}}(C)\ge t+1:t=5\implies d_{\text{min}}(C)\ge6\therefore6
$$

### Part B

Similarly, given that we have to correct up to $3$ errors, we can use the [[../Organised/Mathematics/Definitions/Definition of Distance Theorem|Definition of Distance Theorem]] to find the minimal distance $d_{\text{min}}(C)$ required:
$$
d_{\text{min}}(C)\ge 2k+1:k=3\implies d_{\text{min}}(C)\ge7\therefore7
$$

## Problem P3
*Finding Parameters*

In the code $C=\set{00000,11222,22111}$, there are the following parameters:
$n=5$, $M=3$, $d=5$, and $q=3$.

## Problem P4
*Repetition Codes and Parameters*

Consider the $5$-ary alphabet $A=\mathbb{F}_{5}=\set{0,1,2,3,4}$ and the space of all messages $\mathbb{F}_{5}^{2}$ of length $2$ over $A$.

### Part A

Repeating the symbols of all messages in $\mathbb{F}_{5}^{2}$ leads to the repetition code...
$$
\begin{align*}
&\set{01,02,03,04,12,13,14,23,24,34}\\
&\implies C=\set{000111,000222,000333,000444,111222,111333,111444,222333,222444,333444}
\end{align*}
$$
*+ symmetrical codewords, I guess? I'm ignoring those for the sake of time, though.*

### Part B

Hence the parameters of this code $C$ are $n=6,M=10,d=3,q=5$.

## Problem P5
*Hamming's Original Code*

Given the following possible codewords of the original code proposed by R. Hamming:
$$
\begin{align*}
C=\{&0000000, 0001111, 0010011, 0011100, 0100101, 0101010, 0110110,\ldots\\
&0111001, 1000110, 1001001, 1010101, 1011010, 1100011, 1101100,\ldots\\
&1110000, 1111111\}
\end{align*}
$$

### Part A

The four parameters of this code are $n=7,M=16,d=3,q=2$.

### Part B

We can show that the code detects two errors and corrects one error with the [[../Organised/Mathematics/Definitions/Definition of Distance Theorem|Definition of Distance Theorem]]:

$$
\begin{align*}
d_{\text{min}}(C)=3&\implies3\ge t+1\iff t\le2\\
&\implies3\ge 2k+1\iff k\le1
\end{align*}
$$

## Problem P6
*Chance of Correctly Decoding*

Let the code $C=\set{000,111}$ be given, used in a symmetric channel with symbol error probability $p$.

### Part A

We can determine its parameters as $n=3,M=2,d=3,q=2$.

### Part B

Supposing that a codeword $c\in C$ is sent and a word $w$ is received, we can compute probability of correctly decoding $w$ as:
$$
\begin{align*}
P_\text{corr.dec.}(w)&=\binom{3}{0}(1-p)^{3}+\binom{3}{1}p(1-p)^{2}\\
&=(1-p)^{3}+3p(1-p)^{2}
\end{align*}
$$
where $p$ is the error of a single symbol being incorrect.

### Part C

As a percentage, the probability of incorrectly decoding $w$, when $p=5\%$ or $p=1\%$, is *found by substitution and subtracting from 1*.