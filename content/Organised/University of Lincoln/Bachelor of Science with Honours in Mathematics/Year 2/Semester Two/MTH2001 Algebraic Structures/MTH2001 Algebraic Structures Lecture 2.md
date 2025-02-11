- Previous Lecture: [[MTH2001 Algebraic Structures Lecture 1]].
- Pre-Lecture: [[MTH2001 Algebraic Structures Pre-Lecture 2]].
- Flashcards: [[MTH2001 Algebraic Structures Flashcards]].
- Next Lecture: [[MTH2001 Algebraic Structures Lecture 3]].

## What defines a field in algebraic structures?

### How do fields relate to integral domains and rings?

A **field** is an algebraic structure that satisfies:
1. **Commutative ring**: Addition and multiplication are commutative.
2. **Multiplicative inverses**: Every non-zero element has an inverse.
3. **Integral domain**: No zero divisors (i.e., $ab = 0 \implies a = 0$ or $b = 0$).

This hierarchy places fields as the most restrictive:

$$
\text{Fields} \subset \text{Integral domains} \subset \text{Rings}.
$$

**Key Insight**: Fields are integral domains where every non-zero element is a unit (invertible).

## How do we identify subfields efficiently?

### What is the Quick Subfield Theorem (QST)?

A subset $S \subseteq F$ of a field $F$ is a subfield if:
1. **Closure under operations**: $a \pm b, ab, a^{-1} \in S$ for all $a, b \in S$ ($b \neq 0$).
2. **Non-empty**: $S$ contains at least two elements (typically $0$ and $1$).

**Example**:
- **Gaussian Integers $\mathbb{Z}[i]$** are *not* a subfield of $\mathbb{C}$ (e.g., $i^{-1} = -i \notin \mathbb{Z}[i]$).
- **Gaussian Rationals $\mathbb{Q}(i)$** *are* a subfield (closed under inverses and operations).

### What makes finite integral domains fields?

Every **finite integral domain** is a field.

**Proof Sketch**:
- In a finite set, injectivity of multiplication by a non-zero element implies surjectivity (pigeonhole principle).
- Hence, every non-zero element has an inverse.

**Example**:
- $\mathbb{Z}/p\mathbb{Z}$ (integers modulo prime $p$) is a field.
- $\mathbb{Z}/n\mathbb{Z}$ is a field **if and only if** $n$ is prime.

## What are ring homomorphisms and their properties?

### How do ring homomorphisms differ from group homomorphisms?

A **ring homomorphism** $\theta: R \to S$ preserves both ring operations:
3. **Addition**: $\theta(a + b) = \theta(a) + \theta(b)$.
4. **Multiplication**: $\theta(ab) = \theta(a)\theta(b)$.
5. **Multiplicative identity**: $\theta(1_R) = 1_S$ (if rings are unital).

### What fundamental properties do they inherit?

For any ring homomorphism $\theta$:
- $\theta(0_R) = 0_S$.
- $\theta(-a) = -\theta(a)$.
- **Kernel**: $\ker(\theta) = \{ a \in R : \theta(a) = 0_S \}$ is an ideal of $R$.

**Example**:
The map $\theta: \mathbb{Z} \to \mathbb{Z}/n\mathbb{Z}$ defined by $\theta(k) = k \mod n$ is a ring homomorphism with kernel $n\mathbb{Z}$.

**Key Takeaways**:
- Fields are maximal in the algebraic hierarchy, requiring inverses for all non-zero elements.
- The QST simplifies subfield verification by checking closure and element existence.
- Ring homomorphisms preserve structure across both operations, enabling transfer of algebraic properties.