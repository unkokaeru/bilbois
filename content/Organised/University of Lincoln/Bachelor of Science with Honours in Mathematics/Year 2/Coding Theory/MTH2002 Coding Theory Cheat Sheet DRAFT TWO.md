## **MTH2002** Coding Theory - Cheat Sheet

>[!TIP] Made by William Fayers :)
>Make sure to read this before the exam - I recommend completing a practice test with it so you learn where everything is and can ask if you don't understand something. I might've made mistakes! There's a sudoku at the end in case you finish early, and the cheat sheet is generated based on analysis of past exams and given material. It should also include topics that I don't think will come up, but they theoretically could - these topic explanations will be much more brief.

**Content note**: If bits seem like they're missing context, that's because they are and we probably haven't covered yet, i.e. coset leaders are used in decoding, but we haven't covered how, yet, so it's not useful in this cheat sheet.

### Possible Question Topics and their Explanations

#### 0. Reminders

1. **Cartesian Products**
	1. $A^{n}$: Set of all ordered $n$-tuples from $A$.
	2. Example: If $A = \{0, 1\}$, then $A^{2} = \{(0,0), (0,1), (1,0), (1,1)\}$.
2. **Fields**
	1. Sets with two operations (addition and multiplication) satisfying properties like associativity and identity.
	2. Common fields:
	    - $\mathbb{F}_{2}$: Binary field $\{0, 1\}$.
	    - $\mathbb{F}_{q}$: Finite field with $q$ elements (often a prime number).
	3. Operate under modular arithmetic (e.g. in $\mathbb{F}_{2}$, $1 + 1 = 0$).
3. **Gauss-Jordan Elimination**
	1. Method to find a basis by swapping, scaling, and adding rows to achieve Reduced Row Echelon Form (RREF).

#### 1. Parameters of a Code

1. **Definition**: A code is a subset $C \subset A^{n}$, where $A$ is a $q$-ary alphabet and each element of $C$ is a codeword.
2. **Parameters of a Code**:
    1. A standard code $C$ is an $(n, M, d)_{q}$-code, where:
        1. $q$: Number of symbols in the alphabet (can be excluded if not important).
        2. $n$: Length of each codeword.
        3. $M$: Total number of codewords ($M = |C| = \#C$).
        4. $d$: Minimum Hamming distance ($d = d_{\text{min}}(C)$).
    2. A linear code $C$ is an $[n, k, d]$-code, where:
        1. $k$: Dimension of the code (explained later).

#### 2. Code Representation and Properties

1. **Code Matrix**:
    - A code can be represented as a matrix of codewords (a **code matrix**).
    - Each row corresponds to a codeword.
2. **Code Equivalence**:
    - Two codes are equivalent if their matrices can be transformed into one another through row operations.
3. **Code Symmetry**:
    - A code is symmetric if its structure remains unchanged under matrix operations.
    - This property simplifies analysis and decoding.
4. **Puncturing**:
    - **Definition**: Reducing code length by deleting symbols.
    - Represented as $\hat{C}$.
    - Example: If $C = {000, 111, 010}$, then $\hat{C} = {00, 11, 01}$ after puncturing the last symbol.
5. **Code Rate**:
    - **Definition**: The efficiency of the code.
    - Calculated as the ratio of the number of information symbols $k$ to the length of codewords $n$: $R = \frac{k}{n}$.
    - Indicates how quickly a code can transmit information.
6. **Probability of Symbol Errors**:
	- **Definition**: The likelihood that a transmitted symbol is received incorrectly.
	- **Calculation**:
	    - For a codeword of length $n$, the probability of exactly $t$ errors can be calculated using: $P(\text{exactly } t \text{ errors}) = \binom{n}{t} p^t (1-p)^{n-t}$.
	    - Example: For a codeword of length 4 with symbol error probability $p = 0.05$ and exactly 1 error: $P(\text{one erroneous symbol}) = \binom{4}{1} p (1-p)^{3} = 4 \cdot 0.05 \cdot (0.95)^{3} \approx 0.171475 \text{ or } 17.15\%$.

#### 3. Hamming Distance

1. **Definition**:
    - The Hamming distance is the number of positions where symbols differ between two codewords.
    - Example: For codewords $1000$ and $0000$, the Hamming distance is $1$.
2. **Minimum Hamming Distance**:
    - The minimum Hamming distance $d_{\text{min}}(C)$ is the least distance between any two distinct codewords in the code.
    - Used to determine error detection and correction capabilities.
3. **Distance Theorem**:
    - If $C$ is a code with minimum Hamming distance $d_{\text{min}}(C)$, then:
        1. If $t \in \mathbb{N}$ and $d_{\text{min}}(C) \ge t + 1$, then $C$ detects $t$ errors.
        2. If $k \in \mathbb{N}$ and $d_{\text{min}}(C) \ge 2k + 1$, then $C$ corrects $k$ errors.
4. **Metric Space**:
    - The Hamming distance can form a metric space, satisfying:
        - Non-negativity
        - Symmetry
        - Triangle inequality: $d(x, z) \leq d(x, y) + d(y, z)$.
5. **Solid Hamming Distance Sphere**:
    - A solid sphere (in the aforementioned metric space) of radius $\epsilon$ around a codeword $w$ is defined as $S_{\epsilon}(w)$.
    - Volume of the solid sphere is given by: $|S_{\epsilon}(w)| = \sum_{i=0}^{\epsilon} \binom{n}{i} (q-1)^{i}$.
6. **Sphere-Packing Bound Theorem**:
    - Relates the maximum number of codewords that can exist in a code without overlap: $M \cdot \text{vol}(S_{\epsilon}(c)) \leq q^{n}$.
    - Useful for proofs regarding code efficiency and error correction.

#### 4. Perfect Codes

1. **Definition**:
    - An $(n, M, d)_{q}$-code is **perfect** if it satisfies the following condition: $$M = \frac{q^{n}}{\text{vol}(S_{\epsilon(d)}(c))} \quad \text{where } \epsilon(d) = \left\lfloor \frac{d-1}{2} \right\rfloor \text{ for some codeword } c \in C$$
2. **Properties**:
    - Perfect codes achieve maximum efficiency in error detection and correction.
    - They maximize the number of codewords that exist without overlap, ensuring that every possible received vector is either a codeword or within the error-correcting capability of the code.
3. **Examples**:
    - The earliest examples of perfect codes are the original Hamming codes.

#### 5. Linear Codes

1. **Definition**:
   - A linear code is a code where any linear combination of codewords is also a codeword, meaning it is closed under addition.
2. **Generator Matrix**:
   - A linear code can be represented by a **generator matrix** $G$.
   - The rows of $G$ form a basis for the linear code.
   - Codewords are generated by multiplying $G$ with information vectors: $c = u \cdot G$, where $u$ is a $1 \times k$ information vector.
3. **Parameters**:
   - Linear codes have parameters $[n, k, d]$:
     - $n$: Length of codewords.
     - $k$: Dimension of the code, found with $k=\log_{q}(M)$.
     - $d$: Minimum distance of the code.
   - The dimension $k$ can be found using the **Quick Subspace Theorem**:
     - If $G$ is in row-echelon form, the number of non-zero rows gives $k$ (the dimension).
     - This corresponds to the **rank** of the matrix.
4. **Cosets**:
   - **Cosets** are formed by adding a fixed codeword to all existing codewords.
   - Each coset has a **coset leader**, which is the codeword with the smallest **Hamming weight** (number of non-zero symbols).
   - A **standard array** is a **method to organise codewords and their cosets**.
	   - The first element of each row of the array represents the coset leader, with the other elements representing the codewords.
	   - Each row under the original code row represents the code given a number of errors (e.g. 1 error).
	   - **To make one**, first write out the original code, then iterate rows under with one error away (or any other given number of errors).
5. **Dual Codes**:
   - The dual code $C^{\perp}$ consists of all codewords orthogonal to the original code.
   - The dimension of the dual code is given by: $k^{*} = n - k$.
6. **Parity-Check Codes**:
   - Used to detect single-bit errors and sometimes correct them.
   - Found using the relationship: $G \cdot H^{T} = 0$.
   - If the generator matrix $G$ is in the **standard form**: $G = \begin{bmatrix} I_{k} | P \end{bmatrix}$, then the parity-check matrix $H$ can be quickly found as: $H = \begin{bmatrix} -P^{T} | I_{n-k} \end{bmatrix}$.
   - In binary codes, the negative sign can be omitted, because of the modular arithmetic.

## Simple Sudoku

![[../../../../../Auto-Generated/Attachments/Sudokus/Sudoku fTbzCncC3AAUrpwqRQ6WJ.png]]
