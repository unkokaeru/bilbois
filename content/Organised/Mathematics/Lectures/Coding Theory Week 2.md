# Notes

## Recap

![[../Definitions/Definition of an Alphabet in Coding Theory]]

![[../Definitions/Definition of a Code in Coding Theory]]

![[../Definitions/Definition of Hamming Distance]]

## Does Hamming distance have geometry?

### How do we define something having geometry?

![[../Definitions/Definition of Metric Spaces and Distance Functions]]

#### Examples

There are some familiar examples of these metric spaces, as we often measure distance:

>[!EXAMPLE] Euclidean distance
>From linear algebra and calculus, on $n$-dimensional real vector space $\mathbb{R}^{n}$ , the standard **Euclidean distance** is a metric, turning $\mathbb{R}^{n}$ into a metric space:
>$$d((x_{1},x_{2},\ldots,x_{i}),(y_{1},y_{2},\ldots,y_{i}))=\sqrt{(x_{1}-y_{1})^{2}+\ldots+(x_{n}-y_{n})^{2}}$$
>I.e. measuring distance in a 2d plane using the Pythagorean Theorem, which can be generalised to $n$-dimensions.

>[!EXAMPLE] Spherical distance
>Like on an approximated Earth, a round sphere $\mathbb{S}^{2}$ is a metric space using the **great circle distance**. That is, given two points on the sphere's surface, draw a great circle passing through both - their distance is measured as the length of the shortest (sub)arc so drawn between them.
>Explicitly, given the radius of the sphere $r$ and that$P$ and $Q$ are coordinates in longitude-latitude coordinate form $(\lambda,\phi)$ and $(\mu,\rho)$ respectively: $$d(P,Q)=r\cdot \cos(\sin(\phi) \sin(\rho) + \cos(\phi)(\cos(\rho) \cos(|\lambda − \mu|)))$$

Another example is the **discrete metric**, where you simply take **any set** $S$ and define:
$$
d(x,y)=\begin{cases}
1, & \text{if }x\ne y, \\
0 & \text{otherwise.}
\end{cases}
$$
This is very hard to visualise, though.

### Is Hamming distance a metric?

Let $A$ be a $q$-ary alphabet. Then the Hamming distance on the set $A^{n}$ of words of length $n$ over $A$ is a metric. This can be proven using skills from the Proof module last year, defining necessary variables and then directly proving each axiom in the [[../Definitions/Definition of Metric Spaces and Distance Functions]]. From this proof, we can also correlate that words over an alphabet build metric spaces, as do codes.

### Why is this useful?

Having $A^{n}$ and codes $C\subset A^{n}$ as metric spaces means we can take advantage of geometric concepts, such as **geodesics**: the shortest path between any two points. 

The Hamming distance on an alphabet and a code from it represents the shortest path between any given pair of words. Logically, this makes sense: the Hamming distance represents the smallest number of changes to correct one word to its original. This can be mathematically proven, too, using induction.

Given that it's a metric space, we can also draw these spaces as (metric) **graphs**, like we did in the Algebra module, e.g. $\mathbb{F}_{2}^{3}$ is a cube where each edge represent a Hamming distance of $1$ and each vertex is a possible codeword. The minimum distance along these graphs (shortest path) is the Hamming distance, again.

![[../Definitions/Definition of Minimum Code Distance]]

### Can this relate to error detection and correction?

![[../Definitions/Definition of Error Detection]]

![[../Definitions/Definition of Error Correction]]

The main theorem that relates these ideas with geometry, is the **Distance Theorem**:

![[../Definitions/Definition of Distance Theorem]]

#### How do we prove the Distance Theorem?

To prove this theorem, we need to define a solid sphere:

![[../Definitions/Definition of a Solid Sphere]]

Then, you can prove the first half of the theorem by proving $t\lt d_{\text{min}}(C)$ (as the theorem then follows from this), where $t$ represents the number of detected errors. The proof then assumes this, and proves (given that $d_{\text{min}}(C)$ is the smallest possible distance between **valid** codewords of $C$) that a received word $w$ is in the solid sphere of radius $t$ is less than $d_{\text{min}}(C)$ by construction.

To prove error correction, we require a lemma based on two geometric observations: 
1. Two solid spheres of radius $k$ (where $k$ errors are corrected) around any pair codewords do not contain any valid codewords in common,
2. A word within a solid sphere for any given codeword, you require a larger solid sphere to jump to another valid codeword.
These are quite logical, but can be written mathematically and hence proven, too. The first is proven by assuming the false claim and then contradicting itself, and the second by directly proof (re-writing the lemma as an inequality and simplifying it with the triangle inequality).

Then, we can prove this half of the theorem by proving that, if $d_{\text{min}}(C)\ge 2k+1$, then $C$ corrects $k$ errors. We then take the aforementioned lemmas, the **general principle** (that we assume a few errors as possible occurred during transmission), and corollary about geodesics mentioned before, to directly prove the statement.

### What's the main strategy used to prove the Distance Theorem?

The strategy is so useful, it's named:

![[../Definitions/Definition of Nearest Neighbour Decoding]]

### Does this theorem tell us anything else?

The distance theorem then also correlates **how many errors a code $C$ can detect** ($d-1$ errors) and correct (up to $\lfloor\frac{d-1}{2}\rfloor$), where $\lfloor\rfloor$ is the **floor function** and $d=d_{\text{min}}(C)$.

For example, a code $C=\set{0000,1111,2222}$ (a repetition code of length $4$ over $F_{3}=\set{0,1,2}$) has $d_{\text{min}}(C)=4$, so $C$ can detect up to $4-1=3$ errors and correct $\lfloor \frac{4-1}{2}\rfloor=\lfloor \frac{3}{2}\rfloor=\lfloor1.5\rfloor=1$ error.

A repetition code of length $5$ over an alphabet length $2$ can then detect $4$ errors and correct $2$ errors.

This can be logically worked out, by thinking about how the code could work, but these formulae are very useful for more complex codes. Sometimes, more errors can be detected and correct, but in general this is not the case (and can be generally proven: the distance theorem is optimal).

## What is decoding?

In this module, we're focusing on the correct transmission of data, hence for the purposes of this module, decoding is simply getting the correct codeword from the transmission, i.e. correcting any errors from transmission. Thus, incorrect decoding happens if undetected transmission errors occur.

### Is there any notation regarding incorrect decoding?

Given a code $C\subseteq A^{n}$ and a word $w\in A^{n}$, denote by
- $P_\text{corr.dec.}(w)$ - the probability of correctly decoding $w$,
- $P_\text{incorr.dec.}(w)$ - the probability of incorrectly decoding $w$,
- $P_\text{undetect}$ - the probability of not detecting errors when $w$ is transmitted.

These can sometimes be hard to calculate, but our goals is naturally to minimise $P_\text{incorr.dec.}(w)$.

### What is the chance of incorrect decoding?

For $A=\mathbb{F}_{2},n=5,C=\set{00000,11111}$, with transmission in a symmetric channel with symbol error probability $p=0.004$.

Say $c\in C$ is sent and $w\in \mathbb{F}_{2}^{5}$ is received. Out of the five symbols of $w$, the following can happen:
1. none are wrong, which can happen in $\binom{5}{0}$ ways, each with chance $p^{0}(1-p)^{5}$
	- Simplified, this is just one way with chance $(1-p)^{5}$.
2. one is wrong, which can happen in $\binom{5}{1}$ ways, each with chance $p^{1}(1-p)^{4}$.
	- Simplified, this is five ways with chance of $p(1-p)^{4}$.
3. two are wrong, which can happen in $\binom{5}{2}$ ways, each with chance $p^{2}(1-p)^{3}$.
	- Simplified, this is ten ways with chance of $p^{2}(1-p)^{3}$.
4. three are wrong, which can happen in $\binom{5}{3}$ ways, each with chance $p^{3}(1-p)^{2}$.
	- Simplified, this is ten ways with chance of $p^{3}(1-p)^{2}$.
5. four are wrong, which can happen in $\binom{5}{4}$ ways, each with chance $p^{4}(1-p)^{1}$.
	- Simplified, this is five ways with chance of $p^{4}(1-p)$.
6. all are wrong, which can happen in $\binom{5}{5}$ ways, each with chance $p^{5}(1-p)^{0}$.
	- Simplified, this is one way with chance of $p^{5}$.

But, looking at the **Distance Theorem** and $C$, we know that $C$ corrects up to $\lfloor\frac{5-1}{2}\rfloor=2$ errors. Thus, in the first three cases we can decode $w$, which combined have a probability of...
$$
p=0.004\iff(1-p)^{4}+5p(1-p)^{4}+10p^{2}(1-p)^{3}\approx0.999999364
$$
Which thus leads to a very low chance of incorrectly decoding ($1-0.999999364=0.000000636$).

This neatly demonstrates all the previously mentioned points.

## What are parameters of a code?

![[Definition of Parameters of a Code]]

>[!EXAMPLE]
>$C_{3}=\set{00000,01101,10110,11011}$ is a $(5,4,3)_{2}$-code, i.e. the codewords have length $5$, $4$ codewords in total, with a minimum Hamming distance of $3$ where are $2$ possible symbols to use.

A more generalised answer for **repetition codes**, given that a code $C$ is formed from a $q$-ary alphabet $A$ by considering messages of length $m$ and repeating each of these $m$ symbols $k$ times to their left, would result with $C$ being a $(m\cdot k,q^{m},k)_{q}$-code.

For example, talking $A=\mathbb{F}_{3}=\set{0,1,2}$, where original messages are length $2$ and we repeat symbols twice, so $k=2$. Thus, there are $9$ possible initial messages:
$$
\begin{align*}
&\set{00,01,10,11,02,20,22,21,12}\\
&\to C=\set{0000,0011,1100,1111,0022,2200,2222,2211,1122}\subset \mathbb{F}^{4}_{3}
\end{align*}
$$
This is a $(4,9,2)_{3}$-code, or $(2\cdot2,3^{2},2)_{3}$-code.

## What makes an efficient code?

A 'good' $(n,M,d)_{q}$-code should...
1. have a large $d$ to detect and correct many errors,
2. have relatively small $n$ to speed up transmission
3. have relatively large $M$ to permit a wide variety of messages.

These last two points conflict, however, leading to the **Main Problem of Coding Theory**: 

![[Definition of the Main Problem of Coding Theory]]

Some examples of $M_{q}(n,d)$ are as follows....
- $d=1:M_{q}(n,1)=q^{n}$. This can be proven using different definitions and then using the squeeze theorem.
- $d=n:M_{q}(n,n)=q$. This is similarly proven as before.

---

# Practical

[[Coding Theory Practical 2]]
