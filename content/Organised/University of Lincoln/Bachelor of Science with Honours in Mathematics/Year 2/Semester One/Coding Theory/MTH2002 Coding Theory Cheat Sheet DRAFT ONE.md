## **MTH2002** Coding Theory - Cheat Sheet

>[!TIP] Made by William Fayers :)
>Make sure to read this before the exam - I recommend completing a practice test with it so you learn where everything is and can ask if you don't understand something. I might've made mistakes! There's a sudoku at the end in case you finish early, and the cheat sheet is generated based on analysis of past exams and given material. It should also include topics that I don't think will come up, but they theoretically could - these topic explanations will be much more brief.

**Content note**: If bits seem like they're missing context, that's because they are and we probably haven't covered yet, i.e. coset leaders are used in decoding, but we haven't covered how, yet, so it's not useful in this cheat sheet.

### Possible Question Topics and their Explanations

#### 0. Reminders

**Cartesian products**, such as $A^{n}$, are sets of all ordered $n$-tuples formed by taking one element from $A$ from each position, e.g. $A = {0, 1}$ then $A^{2} = {(0,0), (0,1), (1,0), (1,1)}$.

**Fields** are sets with two operations (addition and multiplication) that satisfy properties like associativity, identity/inverse existence, etc. - common ones include $\mathbb{F}_{2}$ (binary field containing $\left\{ 0, 1 \right\}$) and $\mathbb{F}_{q}$ (finite field, often contain a prime number of elements). The operate under modular arithmetic, so in $\mathbb{F}_{2}$ then $1+1=0$.

**Gauss-Jordan Elimination** is something we can use to find a basis, swapping, scaling, and adding rows together to find Reduced-Row Echelon Form (an identity matrix on the left of the matrix).

#### 1. Parameters of a Code
*A code is a subset $C\subset A^{n}$ where $A$ is a $q$-ary alphabet with each element of $C$ being a codeword*.

A code $C$ is an $(n,M,d)_{q}$-code if:
- $q$ is the number of symbols in the alphabet (sometimes excluded if not important).
- $n$ is the length of each codeword.
- $M$ is the total number of codewords ($M=|C|=\#C$).
- $d$ is the minimum Hamming distance ($d=d_\text{min}(C)$) - discussed next.

A linear code $C$ is an $[n,k,d]$-code, where the parameters are the same but:
- $k$ is the dimension of the code, explained later.

#### 2. Examining Codes

You can represent a code is a matrix of codewords (a **code matrix**), where each row is a codeword. With these, you can work out...

- **Code Equivalence**: two codes are equivalent if their matrices are (via the row operations mentioned at the top of this document).
- **Code Symmetry**: a code is symmetric if its structure remains even under matrix operations, which simplifies analysis and decoding quite a bit.

You can also **reduce code length** by **puncturing** a code: represented as $\hat{C}$, e.g. $C=\left\{ 000, 111, 010 \right\}$ could go to $\hat{C}=\left\{ 00, 11, 01 \right\}$ if we **punctured** (removed) the last symbol.

You can also **measure the efficiency of the code** by calculating its **rate**: the ratio of the number of information symbols $k$ to the length of codewords $n$, $R=\frac{k}{n}$ (how quickly a code can transmit information).

**ADD THE PROBABILITY OF SYMBOL ERRORS**

#### 3. Hamming Distance
*The number of positions where symbols differ between two words, e.g. $1000$ is $1$ away from $0000$, hence the minimum is the least differences within a set of codewords*.

Used for the parameters of a code, as well as the distance theorem, which is **used to find how many errors can be detected and/or corrected**.

>[!NOTE] Distance Theorem
>If $C$ is a code where $d_\text{min}(C)$ is the minimum Hamming distance, then...
>1. If $t\in \mathbb{N}$ and $d_{\text{min}}(C)\ge t+1$, then $C$ detects $t$ errors.
>2. If $k\in \mathbb{N}$ and $d_{\text{min}}(C)\ge 2k+1$, then $C$ corrects $k$ errors.

This can form a metric space (a non-negative, symmetric space for a function that satisfied the triangle inequality $d(x, z) \leq d(x, y) + d(y, z)$), too, called a **Solid Hamming Distance Sphere**, which has a volume defined by:

>[!NOTE] Solid Hamming Distance Sphere Volume
>Given a $q$-ary alphabet $A$ and $n \in \mathbb{N}$, the volume of the solid sphere $S_{\epsilon}(w)$ centered at a word $w$ with radius $\epsilon$ is given by: 
>$$\begin{align*}|S_{\epsilon}(w)|&=\binom{n}{0}+\binom{n}{1}(q-1)+\binom{n}{2}(q-1)^{2}+\ldots+\binom{n}{\epsilon}(q-1)^{\epsilon}\\&= \sum\limits_{i=0}^{\epsilon}\binom{n}{i}(q-1)^{i}\end{align*}$$

You can use these to find the maximum number of codewords that can exist in a code without overlap, the **Sphere-Packing Bound Theorem**: $M \cdot \text{vol}(S_{\epsilon}(c)) \leq q^{n}$. Sometimes this might be useful to do a proof.

#### 4. Perfect Codes

An $(n,M,d)_{q}$-code is perfect if it satisfies...

$$
M=\frac{q^{n}}{\text{vol}(S_{\epsilon(d)}(c))}:\epsilon(d)=\left\lfloor\frac{d-1}{2}\right\rfloor,\text{for some codeword }c\in C
$$

These codes achieve maximum efficiency in error detection and correction, maximising the maximum number of codewords that exist without overlap (the **Sphere-Packing Bound Theorem**). The earliest examples of these are the original Hamming codes.

#### 5. Linear Codes
*A code where any linear combination of codewords is also a codeword, hence is closed under addition*.

A linear code can be made with a **generator matrix** $G$, such that its rows form a basis for the linear code (found using the Gauss-Jordan Elimination mentioned at the top of this document). It's often used to simplify calculations, as well as generate the set of codewords by multiplying repeatedly against some information vector.

As mentioned, their parameters are $[n,k,d]$ (where $k$ is the dimension). This can be found quickly with the **Quick Subspace Theorem**: If a generator matrix $G$ is in row-echelon form (mentioned at the top of this document), the number of non-zero rows gives the dimension of the code, $k$. In Linear Algebra, this is just the **rank** of the matrix (and that's how you find normal dimensions of codes that **aren't linear**, too).

We can easily manipulate these linear codes into new codes, too:

- **Cosets** of a linear code matrix are found by adding a fixed codeword to all existing codewords. This will create a coset with a **coset leader** - the codeword with the smallest **Hamming weight** (number of non-zero symbols in the codeword, e.g. $1010$ has weight $2$) within the coset.
- **Dual codes** $C^{\perp}$ are sets of all codewords that are orthogonal to the original code (i.e. the **dot product between all codewords is equal to zero**). These have dimension $k^{*} = n - k$, where $n$ is the length of the original code and $k$ is its dimension.
- **Parity-check codes** can be used to detect single-bit errors and sometimes correct them. They're found using the relationship $G \cdot H^{T} = 0$ where $G$ is the generator matrix and $H^{T}$ is the transpose of the parity-check matrix. However, given that $G$ is in the form $\begin{bmatrix}I_{k}|P\end{bmatrix}$ (where $I_{k}$ is the identity matrix and $P$ is some matrix), then we can quickly find the **parity-check matrix** with $\begin{bmatrix}-P^{T}|I_{n-k}\end{bmatrix}$, where $n$ is the length of the codewords and $k$ is the dimension of the code. In binary codes this is simplified further since we can omit the negative sign.

**ADD STANDARD MATRIX AND ARRAY STUFF FROM PRACTICAL 6**.

## Simple Sudoku

![[../../../../../../Auto-Generated/Attachments/Sudokus/Sudoku EnVEmM6HLYuvNGaxT6JDS.png]]
