Let $A$ be a $q$-ary alphabet and let $n\in \mathbb{N}$. Consider the space of words $A^{n}$ of length $n$ as a metric space with the Hamming distance.
Then, given any word $w\in A^{n}$ and integer radius $\epsilon\in \mathbb{N}$, the solid sphere $S_\epsilon(w)$ has volume $\text{vol}(S_{\epsilon}(w))=|S_{\epsilon}(w)|$ given by the **formula**...
$$
\begin{align*}
|S_{\epsilon}(w)|&=\binom{n}{0}+\binom{n}{1}(q-1)+\binom{n}{2}(q-1)^{2}+\ldots+\binom{n}{\epsilon}(q-1)^{\epsilon}\\
&= \sum\limits_{i=0}^{\epsilon}\binom{n}{i}(q-1)^{i}
\end{align*}
$$