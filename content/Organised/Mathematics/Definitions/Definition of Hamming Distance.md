Given a $q$-ary alphabet $A=\set{a_{1},a_{2},\ldots,a_{i}}$, the **Hamming distance** $d(w_{1}, w_{2})$ between two words $w_{1}, w_{2} \in A^{n}$ is the total number of positions in which $w_{1}$ has a different symbol than $w_{2}$.

Rewriting with mathematical symbols, that means: 
$$
d(w_{1},w_{2}):=|\set{i\in \set{1,2,\ldots,n}:x_{i}\ne y_{i}}|,\text{ where}
\begin{cases}
w_{1}=(x_{1},x_{2},\ldots,x_{i})\in A^{n}\\
w_{2}=(y_{1},y_{2},\ldots,y_{i})\in A^{n}
\end{cases}
$$
