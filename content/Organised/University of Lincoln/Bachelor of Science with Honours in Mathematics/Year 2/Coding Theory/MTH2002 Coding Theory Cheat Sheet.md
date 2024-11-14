## **MTH2002** Coding Theory - Cheat Sheet

>[!TIP] Made by William Fayers :)
>Make sure to read this before the exam - I recommend completing a practice test with it so you learn where everything is and can ask if you don't understand something. I might've made mistakes! There's a sudoku at the end in case you finish early, and the cheat sheet is generated based on analysis of past exams and given material. It should also include topics that I don't think will come up, but they theoretically could - these topic explanations will be much more brief.

**Small warning**: the following makes the most sense if you read it all first. It also assumes you have knowledge from the linear algebra module (namely finding a basis and simple row operations) - make sure you know these!

### Possible Question Topics and their Explanations

#### 1. Parameters of a Code

1. **Definition**: A code is a subset $C \subset A^{n}$, where $A$ is a $q$-ary alphabet and each element of $C$ is a codeword.
2. **Parameters of a Code**:
    1. A standard code $C$ is an $(n, M, d)_{q}$-code, where:
        1. $q$: Number of symbols in the alphabet (can be excluded if not important).
        2. $n$: Length of each codeword.
        3. $M$: Total number of codewords ($M = |C| = \#C$). ==add alternate calculation==
        4. $d$: Minimum Hamming distance ($d = d_{\text{min}}(C)$).
    2. A linear code $C$ is an $[n, k, d]$-code, where:
        1. $k$: Dimension of the code, equal to $k=\log_{q}(M)$.

#### 2. Code Representation and Properties

1. **Code Matrix**:
    1. A code can be represented as a matrix of codewords (a **code matrix**).
    2. Each row corresponds to a codeword.
2. **Code Equivalence**:
    1. Two codes are equivalent if their matrices can be transformed into one another through row operations.
3. **Code Symmetry**:
    1. A code is symmetric if its structure remains unchanged under matrix operations.
    2. This property simplifies analysis and decoding.
4. **Puncturing**:
    1. **Definition**: Reducing code length by deleting symbols.
    2. Represented as $\hat{C}$.
    3. Example: If $C = {000, 111, 010}$, then $\hat{C} = {00, 11, 01}$ after puncturing the last symbol.
5. **Code Rate**:
    1. **Definition**: The efficiency of the code.
    2. Calculated as the ratio of the number of information symbols $k$ to the length of codewords $n$: $R = \frac{k}{n}$. ==expand with alternates and examples==
    - Indicates how quickly a code can transmit information.
6. **Probability of Errors** (for binary codes, i.e. a symbol is correct or isn't):
	1. ***Symbol Error Probability**: the probability that a single symbol is received incorrectly, represented by $p$.*
	2. **No Errors Probability**: the probability that a codeword is received without any errors, $P(\text{no errors}) = (1 - p)^{n}$.
	3. **Cumulative Error Probability**: the cumulative probability of having at most $t$ errors, $P(X \leq t) = \sum_{i=0}^{t} \binom{n}{i} p^{i} (1-p)^{n-i}$.
	4. **Expected Errors**: expected number of errors in a codeword of length $n$, $E[\text{errors}] = n \cdot p$ assuming an average.
	5. **Undetected Error Probability** (linear code): the probability that an error occurs but isn't detected, $P(\text{undetected error})=\sum\limits_{i=1}^{n}A_{i}p^{i}(1-p)^{n-i}$, where $A_{i}$ is the number of non-zero valid codewords of Hamming weight $i$ (the number of non-zero symbols) in $C$.
	6. **Decoding Success Probability**: the probability that the decoder successfully identifies the transmitted codeword, $P(\text{correct decoding})=\sum\limits_{i=0}^{n}\alpha_{i}p^{i}(1-p)^{n-i}$, where $\alpha_{i}$ is the number of coset leaders of Hamming weight $i$ (the number of non-zero symbols) in a standard array (*easily found with a table for the standard array*).
	7. **Decoding Failure Probability**: the probability that the decoder fails to correctly identify the transmitted codeword, $P(\text{incorrect decoding})=1-P(\text{correct decoding})=1-\sum\limits_{i=0}^{n}\alpha_{i}p^{i}(1-p)^{n-i}$.

#### 3. Hamming Distance

1. **Definition**:
    1. The Hamming distance is the number of positions where symbols differ between two codewords.
    2. Example: For codewords $1000$ and $0000$, the Hamming distance is $1$.
2. **Minimum Hamming Distance**:
    1. The minimum Hamming distance $d_{\text{min}}(C)$ is the least distance between any two distinct codewords in the code.
    2. Used to determine error detection and correction capabilities.
3. **Distance Theorem**:
    1. If $C$ is a code with minimum Hamming distance $d_{\text{min}}(C)$, then:
        1. If $t \in \mathbb{N}$ and $d_{\text{min}}(C) \ge t + 1$, then $C$ detects $t$ errors.
        2. If $k \in \mathbb{N}$ and $d_{\text{min}}(C) \ge 2k + 1$, then $C$ corrects $k$ errors.
4. **Metric Space**:
    1. The Hamming distance can form a metric space, satisfying:
        1. Non-negativity.
        2. Symmetry.
        3. Triangle inequality: $d(x, z) \leq d(x, y) + d(y, z)$.
5. **Solid Hamming Distance Sphere**:
    1. A solid sphere (in the aforementioned metric space) of radius $\epsilon$ around a codeword $w$ is defined as $S_{\epsilon}(w)$.
    2. Volume of the solid sphere is given by: $|S_{\epsilon}(w)| = \sum_{i=0}^{\epsilon} \binom{n}{i} (q-1)^{i}$.
6. **Sphere-Packing Bound Theorem**:
    1. Relates the maximum number of codewords that can exist in a code without overlap: $M \cdot \text{vol}(S_{\epsilon}(c)) \leq q^{n}$.
    2. Useful for proofs regarding code efficiency and error correction.

#### 4. Perfect Codes

1. **Definition**:
    1. An $(n, M, d)_{q}$-code is **perfect** if it satisfies the following condition: $$M = \frac{q^{n}}{\text{vol}(S_{\epsilon(d)}(c))} \quad \text{where } \epsilon(d) = \left\lfloor \frac{d-1}{2} \right\rfloor \text{ for some codeword } c \in C$$
    2. If $d$ is even then the code can never be perfect, as $\epsilon(d)$ will round down (away from perfect).
2. **Properties**:
    1. Perfect codes achieve maximum efficiency in error detection and correction.
    2. They maximize the number of codewords that exist without overlap, ensuring that every possible received vector is either a codeword or within the error-correcting capability of the code. Hence, **perfect codes have all unique coset leaders**.
3. **Examples**:
    1. The earliest examples of perfect codes are the original Hamming codes.

#### 5. Linear Codes

1. **Definition**:
   1. A linear code is a code where any linear combination of codewords is also a codeword, meaning it is closed under addition.
2. **Generator Matrix**:
   1. A linear code can be represented by a **generator matrix** $G$.
   2. The rows of $G$ form a basis for the linear code.
   3. Codewords are generated by multiplying $G$ with information vectors: $c = u \cdot G$, where $u$ is a $1 \times k$ information vector. ==expand on what an information vector is, add an example==
3. **Parameters**: ==how do you find these from the generator matrix==
   1. Linear codes have parameters $[n, k, d]$:
     1. $n$: Length of codewords.
     2. $k$: Dimension of the code, found with $k=\log_{q}(M)$.
     3. $d$: Minimum distance of the code.
   2. The dimension $k$ can be found using the **Quick Subspace Theorem**:
     1. If $G$ is in row-echelon form, the number of non-zero rows gives $k$ (the dimension).
     2. This corresponds to the **rank** of the matrix.
4. **Cosets**:
   1. **Cosets** are formed by adding a fixed codeword to all existing codewords.
	   1. There exists $q^{n-k}$ cosets for a given code, where some may be not be unique (unless a perfect code).
   2. Each coset has a **coset leader**, which is the codeword with the smallest **Hamming weight** (number of non-zero symbols) - it also represents the most likely received word in the coset. Keep in mind that the **zero word is the coset leader** if present!
   3. A **standard array** is a **method to organise codewords and their cosets**. ==explain SADA==
	   1. The first element of each row of the array represents the coset leader, with the other elements representing the codewords.
	   2. Each row under the original code row represents the code given a number of errors (e.g. 1 error) - this is also just the row above plus the coset leader (under modulo $q$ arithmetic if necessary).
	   3. **To make one**, first write out the original code, then iterate rows under with one error away (or any other given number of errors).
	   4. Mathematically, it's given by the following where the coset leaders $a$ are in increasing order down and added on to the valid codewords $c$: $$\begin{bmatrix}\bf{0} & c_{2} & c_{3} & \ldots & c_{q^{k}} \\ a_{2} & a_{2}+c_{2} & a_{2}+c_{3} & \ldots & a_{2}+c_{q^{k}} \\ \vdots & \vdots & \vdots & \ldots & \vdots \\ a_{q^{n-k}} & a_{q^{n-k}}+c_{2} & a_{q^{n-k}}+c_{3} & \ldots & a_{q^{n-k}}+c_{q^{k}}\end{bmatrix}$$
	   6. This **simplifies finding the successful decoding probability** to $P(\text{correct decoding})=\sum\limits_{i=0}^{n}\alpha_{i}p^{i}(1-p)^{n-i}$, where $\alpha_{i}$ is the number of coset leaders of Hamming weight $i$ in a standard array (i.e. the number of non-zero symbols in each coset leader).
5. **Dual Codes**:
   1. The dual code $C^{\perp}$ consists of all codewords orthogonal to the original code.
   2. The dimension of the dual code is given by: $k^{*} = n - k$.
6. **Parity-Check Codes**:
   1. Used to detect single-bit errors and sometimes correct them.
   2. Found using the relationship: $G \cdot H^{T} = 0$.
   3. If the generator matrix $G$ is in the **standard form**: $G = \begin{bmatrix} I_{k} | P \end{bmatrix}$, then the parity-check matrix $H$ can be quickly found as: $H = \begin{bmatrix} -P^{T} | I_{n-k} \end{bmatrix}$.
   4. In binary codes, the negative sign can be omitted, because of the modular arithmetic.

## Simple Sudoku

![[../../../../../Auto-Generated/Attachments/Sudokus/Sudoku fTbzCncC3AAUrpwqRQ6WJ.png]]
