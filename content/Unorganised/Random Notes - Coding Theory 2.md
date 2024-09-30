## Recap

![[Definition of an Alphabet in Coding Theory]]

![[Definition of a Code in Coding Theory]]

![[Definition of Hamming Distance]]

## Does Hamming distance have geometry?

### How do we define something having geometry?

![[Definition of Metric Spaces and Distance Functions]]

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

Let $A$ be a $q$-ary alphabet. Then the Hamming distance on the set $A^{n}$ of words of length $n$ over $A$ is a metric. This can be proven using skills from the Proof module last year, defining necessary variables and then directly proving each axiom in the [[Definition of Metric Spaces and Distance Functions]]. From this proof, we can also correlate that words over an alphabet build metric spaces, as do codes.

### Why is this useful?

Having $A^{n}$ and codes $C\subset A^{n}$ as metric spaces means we can take advantage of geometric concepts, such as **geodesics**: the shortest path between any two points. 

The Hamming distance on an alphabet and a code from it represents the shortest path between any given pair of words. Logically, this makes sense: the Hamming distance represents the smallest number of changes to correct one word to its original. This can be mathematically proven, too, using induction.

Given that it's a metric space, we can also draw these spaces as (metric) **graphs**, like we did in the Algebra module, e.g. $\mathbb{F}_{2}^{3}$ is a cube where each edge represent a Hamming distance of $1$ and each vertex is a possible codeword. The minimum distance along these graphs (shortest path) is the Hamming distance, again.

