## **MTH2002** Coding Theory - Cheat Sheet

>[!TIP] Made by William Fayers :)
>Make sure to read this before the exam - I recommend completing a practice test with it so you learn where everything is and can ask if you don't understand something. I might've made mistakes! There's a sudoku at the end in case you finish early, and the cheat sheet is generated based on analysis of past exams and given material.

**Small warning**: the following makes the most sense if you read it all first. It also assumes you have knowledge from the linear algebra module (namely finding a basis and simple row/column operations) - make sure you know these!

### Possible Question Topics and their Explanations

#### 1. Parameters of a Code

1. **Definition**: A code is a subset $C \subset A^{n}$, where $A$ is a $q$-ary alphabet and each element of $C$ is a codeword.
2. **Parameters of a Code**:
    1. A standard code $C$ is an $(n, M, d)_{q}$-code, where:
        1. $q$: Number of symbols in the alphabet (can be excluded if not important).
        2. $n$: Length of each codeword.
        3. $M$: Total number of codewords ($M = |C| = \#C$). *Can also be calculated with $M=q^{k}$ if linear*.
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
    1. **Definition**: The efficiency of the code/how quickly a code can transmit information.
    2. Calculated as the ratio of the number of information symbols (dimension) $k$ to the length of codewords $n$: $R = \frac{k}{n}$. For a dual code, we can write $R=\frac{k^{\ast}}{n}=\frac{n-k}{n}$, since $k^{\ast}=n-k$ by definition.
6. **Probability of Errors** (for binary codes, i.e. a symbol is correct or isn't):
	1. **Symbol Error Probability**: the probability that a single symbol is received incorrectly, represented by $p$.
	2. **No Errors Probability**: the probability that a codeword is received without any errors, $P(\text{no errors}) = (1 - p)^{n}$.
	3. **Cumulative Error Probability**: the cumulative probability of having at most $t$ errors, $P(X \leq t) = \sum_{i=0}^{t} \binom{n}{i} p^{i} (1-p)^{n-i}$.
	4. **Expected Errors**: expected number of errors in a codeword of length $n$, $E[\text{errors}] = n \cdot p$ assuming an average.
	5. **Undetected Error Probability** (linear code): the probability that an error occurs but isn't detected, $P(\text{undetected error})=\sum\limits_{i=1}^{n}A_{i}p^{i}(1-p)^{n-i}$, where $A_{i}$ is the number of non-zero valid codewords of Hamming weight $i$ (the number of non-zero symbols) in $C$.
	6. **Decoding Success Probability**: the probability that the decoder successfully identifies the transmitted codeword, $P(\text{correct decoding})=\sum\limits_{i=0}^{n}\alpha_{i}p^{i}(1-p)^{n-i}$, where $\alpha_{i}$ is the number of coset leaders of Hamming weight $i$ (the number of non-zero symbols) in a standard array (*easily found with a table for the standard array - just count!*).
	7. **Decoding Failure Probability**: the probability that the decoder fails to correctly identify the transmitted codeword, $P(\text{incorrect decoding})=1-P(\text{correct decoding})=1-\sum\limits_{i=0}^{n}\alpha_{i}p^{i}(1-p)^{n-i}$.

**Helpful information**: Here are some common expansions of $(1-p)^{n}$, calculated using the binomial expansion...
$$
\begin{align*}
(1-p)^{5}&= 1-5p+10p^{2}-10p^{3}+5p^{4}-p^{5}\\
(1-p)^{4}&= 1-4p+6p^{2}-4p^{3}+p^{4}\\
(1-p)^{3}&= 1-3p+3p^{2}-p^{3}\\
(1-p)^{2}&= 1-2p+p^{2}
\end{align*}
$$

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
    1. The earliest examples of perfect codes are the original **Hamming codes**...
	    1. Hamming codes are denoted as $[2^{m}-1,2^{m}-m-1,3]$ for some integer $m$. They can detect up to $t=2$ errors and correct $k=1$, since $d=3$.
	    2. They have notation $\text{Ham}(n-k,q)$.
	1. Another example is the Golay code, e.g. $G(23)$.

#### 5. Linear Codes

1. **Definition**:
   1. A linear code is a code where any linear combination of codewords is also a codeword, meaning it is closed under addition.
   2. Mathematically, this means linear codes must be a **subspace**, meaning it satisfies these three conditions (by the Quick Subspace Theorem):
	   1. Contains the zero vector,
	   2. Closed under vector addition,
	   3. Closed under scalar multiplication.
   3. Alternatively, a linear code must form a solution set to a homogenous system of linear equations (since that is also a vector subspace), so if you can state this set then it must by a linear code.
2. **Generator Matrix**:
   1. A linear code can be represented by a **generator matrix** $G$.
   2. The rows of $G$ form a basis for the linear code.
   3. Codewords are generated by multiplying $G$ with information vectors: $c = u \cdot G$, where $u$ is a $1 \times k$ information vector.
3. **Parameters**:
   1. Linear codes have parameters $[n, k, d]$:
     1. $n$: Length of codewords, found as the number of columns in $G$.
     2. $k$: Dimension of the code, found with $k=\log_{q}(M)$ (or the following Quick Subspace Theorem).
     3. $d$: Minimum distance of the code, equal to the minimum number of vectors (from the columns of the parity-check matrix) linearly combined to give the zero vector (**Linear Distance Theorem**), or just manually calculated from the full code.
	     1. Note: by the **Singleton Bound**, $d\le n-k+1$.
   2. The dimension $k$ can be found using the **Quick Subspace Theorem**:
     1. If $G$ is in row-echelon form, the number of non-zero rows gives $k$ (the dimension).
     2. This corresponds to the **rank** of the matrix.
4. **Cosets**:
   1. **Cosets** are formed by adding a fixed codeword to all existing codewords.
	   1. There exists $q^{n-k}$ cosets for a given code, where some may be not be unique (unless a perfect code).
   2. Each coset has a **coset leader**, which is the codeword with the smallest **Hamming weight** (number of non-zero symbols) - it also represents the most likely received word in the coset. Keep in mind that the **zero word is the coset leader** if present!
   3. A **standard array** is a **method to organise codewords and their cosets**. This process is called **SADA**.
	   1. **Compiling a standard array**:
		   1. **Row 0**: lists all codewords, starting with $\underline{0}$ and then the others arbitrarily.
		   2. **Row 1**: out of vectors not yet listed, choose $\underline{a_{1}}$ of smallest weight (guaranteeing it's a coset leader - minimal weight in the row). Fill in the rest of the row by adding $\underline{a_{1}}$ to each codeword in row 0.
		   3. **Row 2**: repeat process for row 1, still ensuring no repeated vectors and still adding to row 0.
		   4. ...
		   5. **Row $q^{n-k}$**: this is the final row, repeat the same process and then conclude.
		   6. Note: often the coset leaders are something like $00,01,10,11$ for a binary code or $00,01,02,10,20$ for a ternary code, since they have weight 1. It's not often the weight goes beyond 2.
	   2. This **simplifies finding the successful decoding probability** to $P(\text{correct decoding})=\sum\limits_{i=0}^{n}\alpha_{i}p^{i}(1-p)^{n-i}$, where $\alpha_{i}$ is the number of coset leaders of Hamming weight $i$ in a standard array (i.e. the number of non-zero symbols in each coset leader).
	   3. **Decoding using SADA**: Simply find the codeword, then the decoded message is at the top of the same column, e.g. $0011\rightarrow0111$ in the above example.
5. **Dual Codes**:
   1. The dual code $C^{\perp}$ consists of all codewords orthogonal to the original code, such that they're linear codes generated from the **parity-check code matrix** of its original code.
   2. If $C$ is an $[n,k,d]_{q}$ linear code, then $C^{\perp}$ has parameters $[n,k^{\ast},d^{\ast}]_{q}$, where:
	   1. $k^{\ast}=n-k$, *since $k^{\ast}$ represents the remaining degrees of freedom in $n$-dimensional space, by definition*.
	   2. $2\le d^{\ast}\le n-k+1$, *since it must detect at least one error and cannot have more parity symbols than the original code*.
   3. The rate of $C$ is defined as $R=\frac{k}{n}$, hence $R^{\ast}=\frac{k^{\ast}}{n}=\frac{n-k}{n}=1-R$.
6. **Parity-Check Codes**:
	1. Used to detect single-bit errors and sometimes correct them.
	2. Found using the relationship: $G \cdot H^{T} = 0$.
	3. If the generator matrix $G$ is in the **standard form**: $G = \begin{bmatrix} I_{k} | P \end{bmatrix}$, then the parity-check matrix $H$ can be quickly found as: $H = \begin{bmatrix} -P^{T} | I_{n-k} \end{bmatrix}$.
	4. Note: $P^{T}$ is the transpose, where rows become columns, and vice versa.
	5. In binary codes, the negative sign can be omitted, because of the modular arithmetic.
	6. **Linear Distance Theorem**: Can be used to find minimal distance $d$ by counting the minimum number of linearly dependent columns of the matrix $H$ (minimum number of columns that add to give the zero vector).
7. **Syndrome Decoding**:
	1. Uses syndromes $S=r\cdot H^{T}$, where $r$ is a received vector. If $S=0$, the vector is a valid codeword. *Note that the syndrome is normally shorter than the vector*.
	2. To decode, compile a **table of syndromes**...
		1. **Row 0**: the zero codeword $\underline{0}$ and its syndrome $S(\underline{0})=\underline{0}$.
		2. **Row i**: a vector $\underline{a_{i}}$ of smallest weight such that $S(\underline{a_{i}})$ hasn't appeared in the table yet and its syndrome $\underline{a_{i}}$.
			1. Possible shortcut tricks are...
				1. ... the syndrome of form $00..1..00$, where $1$ is in the $i$-th position, is the $i$-th column of the parity-check matrix.
				2. ... for two vectors $a_{1}$, $a_{2}$, $S(a_{1}+a_{2})=S(a_{1})+S(a_{2})$, e.g. to find $S(0011)$ you can add $S(0001)+S(0010)$.
		3. Should be complete at row $q^{n-k}$.
	3. With this table, you can receive a vector $\underline{y}$ and then calculate its syndrome $S(\underline{y})$.
	4. In the table, find $\underline{a_{i}}$ such that $S(\underline{a_{i}})=S(\underline{y})$, i.e. find the vector with the same syndrome; *this is the coset leader of $\underline{y}+C$*.
	5. The decoded codeword is simply the difference between the two vectors, $\text{DECODE}(\underline{y})=\underline{y}-\underline{a_{i}}$.
	6. *This is better than the standard array, since it uses more computation instead of memory*.

**NOTE**: Remember that two multiply two matrices, the columns of the first matrix must equal the rows of the second! E.g. $\begin{bmatrix}1 & 2 & 3\end{bmatrix}\cdot\begin{bmatrix}1 \\ 2 \\ 3\end{bmatrix}=1\cdot1+2\cdot2+3\cdot3=14$.

#### 6. Designing Codes

1. **Cyclic Codes**: A linear code where any cyclic shift of a codeword gives another codeword in code.
	1. **Generator Polynomial**: a polynomial to generate all codewords of a code - it must divide $x^{n}-1$ under $\mathbb{F}_{q}[x]$. To find this...
		1. Decompose $x^{n}-1$ into irreducible factors over $\mathbb{F_{q}}$.
		2. Choose a combination of these factors to form $g(x)$ such that the degree of $g(x)$ is $n-k$.
	2. **Generator Matrix**:
		1. Row 1: Coefficients of the generator polynomial, starting with $x^{0}$ coefficient (constant term) and then go up to $x^{n}$.
		2. Following rows: The previous row shifted along by one, until the number of rows is equal to the degree of the generator polynomial.
	3. **Properties**:
		1. Can be generated by one non-zero codeword (this is the codeword composed of the coefficients of the generator matrix).
		2. $k=n-\text{deg}(g)$, $\text{rate}=1-\frac{\text{deg}(g)}{n}$, $d_\text{min}(C)\le n-1$.
	4. **BCH Codes** (useful to design a cyclic code with a set $d_\text{min}=2t+1$, with $t$ errors to correct, *practically where $t\lt10$, but theoretically $\forall t\in \mathbb{N}$*):
		1. A basic BCH code $\text{BCH}_{q}(\alpha, \beta)\subseteq \mathbb{F}^{n}_{q}$ is cyclic with $g(x)=(x-\alpha)\cdot(x-\alpha^{2})\cdot\cdots\cdot(x-\alpha^{\delta-1})$.
		2. It has parameters $n=q-1,k=q-\delta,d\ge \delta$ and $\text{rate}=\frac{q-\delta}{q-1}$.
		3. To construct, find $q,\alpha,\delta$:
			1. $q$ is an arbitrary prime number, but greater than $\delta$.
			2. $\delta$ is found arbitrarily within $1\le \delta\lt q-1=n$ and is the lower bound for the desired minimal distance.
			3. $\alpha$ is found as the element in $\mathbb{F}_{q}\backslash\{0\}$ which can generate the entire alphabet with its powers, i.e. $\mathbb{F}_{q}\backslash\{0\}=\{1,\alpha,\alpha^{2},\ldots,\alpha^{q-2}\}$. This means it's a **primitive element**: *these are often small numbers, like 2 or 3 - just test manually*!
				1. To test if an element is primitive, ensure that $\alpha^{d}\equiv 1 \text{ mod } q$ is not satisfied for any divisor $d$ of $n$ (other than $1$ and $n$). *If you add one to each index of its prime factors, multiply them together, subtract two, then you'll get the number of these*.
2. **Repetition Codes**: Length $n$ repeats each bit $n$ times, e.g. length $3$ would convert $1\rightarrow111$.
	1. **Generator Matrix**: $G=\begin{bmatrix}1 & 1 & \ldots & 1\end{bmatrix}$, where there are the same number of entries as $n$. Always dimension $k=1$ and minimum distance $d=n$.
	2. **Solution Set**: $x_{1}=x_{2}=\ldots=x_{n}$.

## Simple Sudoku

![[../../../../../../Auto-Generated/Attachments/Sudokus/Sudoku XwbJmsWCf4GkjmB7rwW4Z.png]]