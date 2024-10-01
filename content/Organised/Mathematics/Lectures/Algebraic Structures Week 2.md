## Recap

![[../Definitions/Definition of a Group]]

We can always assume that additive integers and multiplicative integers are a group, and hence are associative, too.

Another common examples is $\mathbb{Q}$ and $\mathbb{R}$ over multiplication, which isn't a group, but $\mathbb{Q}^{*}$ and $\mathbb{R}^{*}$ is (these new sets exclude $0$, which causes probably as it's non-invertible).

## What is an Abelian group?

Let $G$ be a group. Then $G$ is called **abelian** whenever $ab=ba$ for all $a,b\in G$. Basically, a group that obeys the four axioms of a group, as well as commutativity.

## Are identity and inverse elements unique?

If we define an operation $*$ on $\mathbb{R}^{*}=\mathbb{R}\set{0}$ by $x*y=|x|y$, then there are two elements which do nothing: $1*x$ and $-1*x$, because the absolute value. Which is the inverse?

The issue here is that this doesn't define a group, and in fact leads to contradictions such as $-1=1$. Hence, we define a theorem...

![[../Definitions/Definition of Identity Uniqueness]]

This can be proven by assuming the negative, that $G$ has two identity elements. Following this, we create a proof by contradiction which then leads to the two identity elements being equal to each other.

The inverse is more logical, where the inverse of an inverse is the original.

[[../Practical Sessions/Algebraic Structures Practical 1]]