Let $S$ be a set. We say that $S$ forms a **metric space** if there exists a function $d:S\times S\to \mathbb{R}_{\ge0}$, called a **metric or distance function**, which satisfies the following axioms:

1. **Non-Negativity**: Given $x,y\in S$, $d(x,y)=0\iff x=y$, i.e. two points are zero distance apart, only if they are the same point.
2. **Symmetry**: For all $x,y\in S$, $d(x,y)=d(y,x)$, i.e. it doesn't matter which direction you measure the distance between two points, it should result in the same distance.
3. **Triangle Inequality**: For all $x,y,z\in S$, $d(x,z)\le d(x,y)+d(y,z)$, i.e. the direct distance between two points is always less than the indirect route.

*Informally, a space with the concept of measuring distance.*