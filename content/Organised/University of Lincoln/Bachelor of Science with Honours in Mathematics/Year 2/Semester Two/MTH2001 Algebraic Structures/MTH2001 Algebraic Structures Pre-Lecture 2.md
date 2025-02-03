- [[../../../../../../Auto-Generated/Attachments/MTH2001 Algebraic Structures Pre-Lecture 2 NOTES.pdf|Lecture Notes]].
- [[../../../../../../Auto-Generated/Attachments/MTH2001 Algebraic Structures Pre-Lecture 2 DETAILED NOTES.pdf|Lecture Notes (Detailed)]].
- Lecture: [[MTH2001 Algebraic Structures Lecture 2]].

## Fields, Subfields, Quick Subfield Theorem

> [!NOTE] Maybe make a Venn Diagram for Algebraic Structures?

The final extension! Fields are just **integral domains with inverses**. This makes the algebraic structure hierarchy...

$$
\text{Fields}\subset \text{Integral domains}\subset \text{Rings}
$$

Formally...

![[Definition of a Field]]

We can test and prove everything formally, but often another QST is used (quick subfield theorem/test):

![[Definition of Quick Subfield Theorem]]

This can be used to show that, for example, Gaussian Integers are not a subfield of $\mathbb{C}$, but Gaussian Rationals are. We cal also show that every **finite** integral domain is a field, which makes testing even easier (and can demonstrate other properties that fields have).

We can also show that things like integers modulo $n$ are fields if and only if $n$ is prime (as it makes the integral domain finite).

## Homomorphisms

As previously defined, a group homomorphism is a map between groups that preserves group operations.

Similarly, rings also have homomorphisms where they preserve BOTH operations (since they have two). Hence,

![[Definition of a Ring Homomorphism]]

Similar relationships between fields, integral domains, and rings, naturally exist with their homomorphisms, too.

Proving these homomorphism is as easy as direct proof.

**Ring homomorphism properties**:

If $\theta:R\to S$ is a ring homomorphism, then
- $\theta(0_{R})=0_{S}$,
- $\theta(-a)=-\theta(a)$ for all $a\in R$.