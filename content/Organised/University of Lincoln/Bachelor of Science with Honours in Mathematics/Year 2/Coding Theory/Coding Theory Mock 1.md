## Question 1

Let $C$ be binary linear code with the following generator matrix...

$$
G=\begin{bmatrix}1 & 1 & 1 & 1 & 0 \\ 1 & 0 & 1 & 0 & 1\end{bmatrix}
$$

### Question 1a
*List elements of a code based on a generator matrix and determine its parameters*.

$[5,2,3]$ - **to-do: neaten the method I wrote in my notebook, after checking the answer**.

### Question 1b
*Find a standard matrix and a parity-check matrix linearly equivalent to a code*.

$$
\begin{bmatrix}
1 & 0 & 1 & 0 & 0 \\
0 & 1 & 0 & 1 & 0 \\
1 & 1 & 0 & 0 & 1
\end{bmatrix}
$$

**to-do: neaten the method I wrote in my notebook, after checking the answer**.

### Question 1c
*Calculate the probability that errors over transmissions are not detected, as a polynomial*.

$$
P(\text{undetected error})=\sum\limits_{i=1}^{n}A_{i}p^{i}(1-p)^{n-i}
$$

