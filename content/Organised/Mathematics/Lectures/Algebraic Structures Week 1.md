An **algebraic structure** is something with a **set**, **operation**, and **identities** or **axioms**. They help us understand what different mathematical objects have in common and allow us to understand things more abstractly. Essentially, it's just another level of generalisation beyond simple variables.

> [!WARNING] Note on notation
> Often a generic operation is given as $a*b$, but can also be written as $ab$, $a\cdot b$, as well as essentially any other symbol. Thus it should be clearly defined to avoid confusion.

## Groups

![[../Definitions/Definition of a Group]]

If a set withholds these four axioms, then that set is the type of algebraic structure called a **group**. Some of these groups follow an additional axiom which makes it an [[abelian group]] (commutativity, i.e. the order of operations does not affect the result). Often it is easy to disprove that a set is a group with a counter-example, but proving a set is a group is involves a rigorous proof of each axiom.

> [!EXAMPLE] An informal example
> The integers $\mathbb{Z}$. If we take two integers $x$ and $y$ in $\mathbb{Z}$, $x+y$ is also in $\mathbb{Z}$ ($\mathbb{Z}$ is closed). If you add three integers together, whether you initially sum the first two or the last two, it doesn't affect the result ($\mathbb{Z}$ is associative). Adding $0$ to any integer doesn't affect the result ($\mathbb{Z}$ has the identity element $0$). For each integer, there is another integer which brings the first integer back to zero, i.e. for every $x$ in $\mathbb{Z}$, there is $-x$ (every element in $\mathbb{Z}$ has an inverse).

Note that groups aren't all this clearly algebraic, there are also a lot of geometric groups, such as the transformations of a square $D_{8}$.

[[Chat-2024_09_23-16_30_07]]

![[../../../Auto-Generated/Attachments/Slides.pdf]]