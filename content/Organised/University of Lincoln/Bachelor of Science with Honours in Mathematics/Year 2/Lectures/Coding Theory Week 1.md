#todo #math #mth2002 #lecturenotes

> [!QUOTE]
> If you state some information, you must either rigorously prove the claim or reference where someone else does so. - Yuri

[[../Practical Sessions/Coding Theory Practical 1]]

## What is Coding Theory?
*Basically just the study of encoding and decoding information, where the process between is a transformation, such as the transformation between languages or to encode files, e.g. `.mp3` files.*

> [!INFO] Mathematical Definition
> Let $A$ be a finite set with $q$ elements, $A=\set{a_{1}, a_{2}, \ldots, a_{q}}$.
> Let us call the elements of $A$ **symbols** and $A$ will be called an **alphabet**.
> A **message** (or data, or information), over the alphabet $A$, is just a finite sequence of symbols out of $A$. Traditionally, a message consisting of $n$ symbols is called a **word** (or vector or string) of **length** $n$.
> For example, a word $a_{4}a_{1}a_{3}a_{2}$ would have length $n=4$.

___
### Building Blocks of a Code

> [!EXAMPLE]
> The modern latin alphabet $\set{A,B,\ldots,Y,Z}$, the Greek alphabet $\set{\alpha, \beta, \gamma,\ldots, \zeta}$, Egyptian hieroglyphs, decimal digits, and even the set of pheromones of ants are alphabets (as these are the chemical signals they use for communication).

Essentially, any set of **symbols** that are used for communication can be labelled an **alphabet**. Any combination of these symbols is called a **word**, where one or more of these is then a set of **messages** over $A$ (the alphabet set).

___
#### Encoding Process

Let $X$ and $A$ be alphabets, and let $C$ be some set of messages over $A$. An **encoding-decoding rule** (or process) for $X$ with target $C$ is just a transformation

$$
f:\set{\text{some set of messages over }X}\to C
$$

that can be reversed. Here, $X$ is called the original alphabet, and $C$ (the target set) has elements named **codewords** (or coded messages, or coded words). $A$ is just the alphabet for $C$, as previously defined.

> [!EXAMPLE]
> The original alphabet is thus $X=\set{N,S,E,W}$, the set of messages is again just $\set{N,S,E,W}$, the alphabet of the code will be the binary set $A=\set{0,1}$, the code is $C_{1}:=\set{00,11,01,10}$, and the **encoding-decoding function** is the function $f:\set{N,S,E,W}\to C_{1}$, where each element maps to an element of $C_{1}$, e.g. $N\to00$.

___
##### Assumptions during encoding

###### Assumption one

For practical purposes, it is common for data (words, messages, information) to be transmitted in **blocks** through a **rigid** transmission scheme, i.e the transmission channel and means are not changing during transmission. Essentially, we assume that once an alphabet $A$ is set, transmissions usually send a messaged of a fixed length $n$.

___
###### Assumption two

Another natural assumption is that as few errors as possible have occurred, otherwise the problem likely lies in transmission channels, not with the code itself. In particular, if we received a sequence of symbols that is not a valid word, we will look for a valid codeword that looks as much as possible like the word received. At lot like choosing the closest multiple-choice answer to the result you got on a test.

> [!EXAMPLE]
> Suppose our code is the set $\set{0000,1111,1110,0110}$ and that in two transmissions we receive the words $0001$ and $0111$.
> In the first transmission, it is more likely that the intended first word to be received was $0000$.
> In the second transmission, it could have been $1111$ or $0110$. However, extending the error correction from the first word, we can assume the error is within the last digit again, so the second word would be logically assumed to be $0110$.

___
###### Assumption three

We suppose that each symbol being transmitted has the same probability $p< \frac{1}{2}$ of being received in error. We call the number $p$ the **symbol error probability** of the channel. This is essentially an assumption that most of the symbols are transmitted successfully, as mentioned in *assumption two*.

If a symbol in a given position is received in error, each of the remaining $q-1$ (where $q$ is the length of the alphabet $A$) symbols is equally likely: $\frac{p}{q-1}$ is the probability that a particular symbol appears in a given position instead of the correct one. This formula isn't often used, but is useful for general knowledge about coding theory.

> [!EXAMPLE]
> Consider the code $C_{1}:=\set{00,11,01,10}$. Suppose the channel has symbol probability $p=0.01$ and that a word has been transmitted.
> The chance that the word is received with no errors is equal to the probability that no errors occur in the first digit and that no errors occur in the second digit. Thus this probability is $(1-p)^{2}=0.99^{2}=0.9801$, a very high chance.

___

## Why do we study Coding Theory?

- Do we want to have a fast transmission channel? (studied within Data Compression, trying to shrink data as much as possible, sometimes adjusting the transmission channel).
- Do we want to exchange information secretly? (studied within Cryptography, transforming data so that only the receiver understands, thus focuses on the encoding-decoding process)
- **Do we want to transmit efficient and accurate data? (studied within Coding Theory)**

**Coding Theory** is the subarea of information theory that studies codes that detect errors and/or correct errors. Thus, this discipline provides codes designed in such a way that if errors occur in transmission, then the receiver can detect and/or correct errors based on the remaining symbols received and so recover the intended codeword.

> [!NOTE]
> I studied this when [[generating QR Codes]], when I implement [[Reed-Solomon Error Correction]], as well as when I studied error correction algorithms using parity.

## How do we formalise Coding Theory?

Given an alphabet $A$ with $q$ symbols, a $q-ary$ code (over $A$) of length $n$ is a subset $C\subset A^{n}$. That is, $C$ is some set of words length $n$ taken from an alphabet $A$ consisting of $q$ symbols. A (valid) codeword is an element of $C$.

We say that $C$ detects $t$ errors if, whenever up to $t$ errors occur in the transmission of any codeword, then one can recognise this from the code $C$. Similarly, we can correct $k$ errors. For example, $C_{1}$ mentioned in numerous example within this note does not detect or correct any errors. On the contrary, we can design a code to do just that:

### The simplest error correction, parity checking
[A useful and relevant video](https://www.youtube.com/watch?v=X8jsijhllIA).

$$
C_{2}:=\begin{cases}
0 & 0 & 0 & \leftrightarrow & N \\
1 & 1 & 0 & \leftrightarrow & S \\
0 & 1 & 1 & \leftrightarrow & E \\
1 & 0 & 1 & \leftrightarrow & W
\end{cases}
$$

This is $C_{1}$, with an addition digit sent representing the parity of the other two digits (the sum of the first two under the additive rule $1+1=0$ for the binary set $\set{0,1}$ - [[modular arithmetic]]).

Hence, if the parity does not line up across the digits, then we have detected an error. This falls apart if any of our three assumptions made during explaining encoding are not correct, such as both digits being transmitted incorrectly, but under our assumption this error correction is perfect, despite its simplicity.

This code also does not correct any errors, as we don't know where the error occurred, only simply that one did occur. This is fixed with [[Hamming codes]], where you implement an additional parity digit which counts the parity of the entire matrix. The video linked at the beginning of this section explains this very well: watch it! The are numerous other ways of fixing this flaw, both more efficient and less efficient.

Many error correction algorithms simply extend this logic, like with Reed-Solomon instead checking the behaviour of a polynomial generated from the co-efficients of the data matrix.

### ISBN Example

...

## Hamming Distance

Computes the number of positions across two words where their symbols are different, e.g. $010010$ and $011000$ has $d(w_{1},w_{2})=2$ as two symbols are different in the same positions, given that $A=\set{0,1}$ ($q=2$) and $n=6$.

Thus, it's a useful measure of how many errors might have occurred in transmission, and can be used as a measurement to minimise error. This is known as the **nearest neighbour decoding strategy**.

### Hamming's Original code

$C$ is the subset of $\mathbb{F}_{2}^{7}$ consisting of all elements ($c_{1},c_{2},\ldots,c_{7}$) satisfying $c_{5}=c_{1}+c_{2}+c_{4}$, $c_{6}=c_{1}+c_{3}+c_{4}$, and $c_{7}=c_{2}+c_{3}+c_{4}$. Thus the first four digits are known as the **source word** and the last three as **parity bits**.

Given a codeword $w$, we could receive codeword $u$ with some possible errors. Usually, it can correct odd errors, but if there are an even number of errors that it isn't always corrected.

**NEXT TIME**:
Distance theorem, chances of detection/correction, parameters of codes, main problem.