---
epoch: 1732790899094
modelKey: gpt-4o|openai
tags:
  - copilot-conversation
---

**user**: Read [[MTH2002 Coding Theory Cheat Sheet]] and [[MTH2004 Differential Equations Cheat Sheet]]. Those are two examples of cheat sheets for a module mid-term.

I have another module mid-term coming up for MTH2001 Algebraic Structures. Could you write this for me? Below are the rough topics it should cover:

Week 1 - Groups

Groups
Direct products

Week 2 – Abelian Groups

Abelian groups
Uniqueness of identity element and inverses.

Week 3 – Orders, subgroups and group homomorphisms

Order of a Group,
Subgroup
Group homomorphisms and isomorphisms
Week 4 - Group homomorphisms and kernels 

More on group homomorphisms and isomorphisms,
Kernel
Week 5 – Kernels, normal subgroups, cyclic groups

Kernels,
normal subgroups,
cyclic groups.

Week 6- Cyclic groups and cosets

Cyclic groups,
cosets.
Week 8- Cosets and Lagrange’s Theorem

More on cosets,
Lagrange's Theorem.


Week 9- Group quotients and Rings

Group quotients,
natural homomorphism,
new algebraic structures: Rings.

We also have some questions that the cheat sheet should implicitly help answer:

Revision on groups
4.1. Let T denote the set of all 2 × 2 matrices with integer entries and determinant 2.
(1) Is T a subset of the multiplicative group GL(2, Z) of 2 × 2 matrices with non-zero
determinant?
(2) Does the set T form a group under addition? Justify.
(3) Does this set T form a group under multiplication? Justify.
4.2. Consider the additive group M (4, Q) of 4 × 4 matrices with rational entries.
Is the set D of diagonal matrices a subgroup of M (4, Q)?
4.3. Consider GL(2, Z), the multiplicative group of 2 × 2 matrices with integer entries and
non-zero determinant.
(1) Is H =
n  2 0
0 2

,
 −2 0
0 −2
 o
a normal subgroup?
(2) Write down all elements of K =
 1 0
0 −1

.
(3) Is K of the previous item a normal subgroup?
4.4. Consider the group GL(2, R) of invertible 2 × 2 matrices with real entries.
(1) Define a homomorphism ϕ : GL(2, R) → R∗ by ϕ(A) = det(A). Prove that ϕ is a
homomorphism.
(2) Determine the kernel of ϕ.
(3) Is ϕ surjective? Is it injective?
4.5. Let D8 = {e, a, a2, a3, b, ab, a2b, a3b} be the group of symmetries of the square.
(1) Write down all elements of H = ⟨a2b⟩. What is the order of H?
(2) Write down the different elements of the quotient D8/H. What is the degree [D8 : H]?
(3) Is the quotient D8/⟨a2b⟩ a group with the operation defined in the lectures? Justify.
(4) Write down all elements of K = ⟨a2⟩. What is the order of K?
(5) Write down the different elements of the quotient D8/K. What is the degree [D8 : K]?
(6) Is the quotient D8/K a group with the operation defined in the lectures? Justify.

Below is also the content of the revision slides:


Question about ⟨4⟩ in Z∗
9
Question
We have computed K = ⟨4⟩ in Z∗
9 to be K = {1, 4, 7}. What are
the dierent cosets of Z∗
9/K?
Solution
We know that K is the rst coset.
Pick an element x in Z∗
9 = {1, 2, 4, 5, 7, 8} that is not in K
and nd xK:
2 /∈ K and 2K = {2, 8, 14 = 5} = {2, 5, 8}.
We have now covered all elements of Z∗
9, so these are all the
dierent cosets.
Z∗
9/K = {K, 2K}.
30 36
Quotient Groups
Quotient group
Denition/Theorem.
Let N be a subgroup of G.
Then G/N is a group with operation
aN · bN = (ab)N
if and only if N is normal in G.
Example
nZ is a normal subgroup of Z because both are abelian. Thus,
Z/nZ = {nZ, 1 + nZ, . . . , (n − 1) + nZ} ≃ Zn
is a group.
31 36
Quotients of D8
Example
We have computed the elements of the subgroups ⟨ab⟩ and ⟨a2⟩
of D8.
We have shown that ⟨ab⟩ is non-normal in D8. Thus, D8/⟨ab⟩
is not a group.
We have shown that ⟨a2⟩ is normal in D8. Thus, D8/⟨a2⟩ is a
group.
32 36
Quotients of Z9 and Z∗
9
Question
Recall that H = ⟨3⟩ = {0, 3, 6} in Z9, and K = ⟨4⟩ = {1, 4, 7} in
Z∗
9.
Are the sets Z9/H and Z∗
9/K groups?
Solution
We know from the lectures that G/N is a group if and only if
N is normal in G.
The groups Z9 and Z∗
9 are both abelian, so all their subgroups
are normal.
Thus, Z9/H and Z∗
9/K are groups.
33 36
Index of a subgroup
Denition.
The integer |G|
|H| is called the index of H in G.
Notation: [G : H].
Remark.
Notice that [G : H] is the number of cosets of H in G.
34 36
Example
Example
In a previous examples we have computed H = ⟨3⟩ in Z9, and
K = ⟨4⟩ in Z∗
9.
We also computed:
Z9/H = {H, 1 + H, 2 + H}, and
Z∗
9/K = {K, 2K}
Thus
|Z9 : H| = 3, and
|Z9 : K| = 2.



Remember, just like the example cheat sheets I sent you, it should include definitions and methods!
[Timestamp: 2024/11/28 10:48:19]

**ai**: Here's a cheat sheet for your MTH2001 Algebraic Structures mid-term, following the style of the examples you provided:

---

## **MTH2001** Algebraic Structures - Cheat Sheet

>[!TIP] Made by [Your Name]
>Make sure to read this before the exam - I recommend completing a practice test with it so you learn where everything is and can ask if you don't understand something. I might've made mistakes! This cheat sheet is generated based on analysis of past exams and given material. It should also include topics that I don't think will come up, but they theoretically could - these topic explanations will be much more brief.

**Small warning**: the following makes the most sense if you read it all first. It also assumes you have knowledge from previous algebra modules - make sure you know these!

### Possible Question Topics and their Explanations

#### Week 1 - Groups

1. **Groups**:
   - **Definition**: A set \( G \) with a binary operation \(*\) satisfying:
     1. **Closure**: For all \( a, b \in G \), \( a * b \in G \).
     2. **Associativity**: For all \( a, b, c \in G \), \( (a * b) * c = a * (b * c) \).
     3. **Identity Element**: There exists \( e \in G \) such that for all \( a \in G \), \( e * a = a * e = a \).
     4. **Inverses**: For each \( a \in G \), there exists \( b \in G \) such that \( a * b = b * a = e \).

2. **Direct Products**:
   - **Definition**: The direct product of two groups \( G \) and \( H \), denoted \( G \times H \), is the set of all ordered pairs \( (g, h) \) where \( g \in G \) and \( h \in H \), with the operation defined component-wise.

#### Week 2 – Abelian Groups

1. **Abelian Groups**:
   - **Definition**: A group \( G \) is abelian if for all \( a, b \in G \), \( a * b = b * a \).

2. **Uniqueness of Identity Element and Inverses**:
   - **Theorem**: In any group, the identity element and inverses are unique.

#### Week 3 – Orders, Subgroups and Group Homomorphisms

1. **Order of a Group**:
   - **Definition**: The order of a group \( G \), denoted \( |G| \), is the number of elements in \( G \).

2. **Subgroup**:
   - **Definition**: A subset \( H \) of a group \( G \) is a subgroup if \( H \) itself forms a group under the operation of \( G \).

3. **Group Homomorphisms and Isomorphisms**:
   - **Homomorphism**: A function \( \phi: G \to H \) between two groups that preserves the group operation.
   - **Isomorphism**: A bijective homomorphism. If such a map exists, \( G \) and \( H \) are isomorphic, denoted \( G \cong H \).

#### Week 4 - Group Homomorphisms and Kernels

1. **More on Group Homomorphisms and Isomorphisms**:
   - **Properties**: Homomorphisms map identity to identity and inverses to inverses.

2. **Kernel**:
   - **Definition**: The kernel of a homomorphism \( \phi: G \to H \) is the set \( \ker(\phi) = \{ g \in G \mid \phi(g) = e_H \} \).

#### Week 5 – Kernels, Normal Subgroups, Cyclic Groups

1. **Normal Subgroups**:
   - **Definition**: A subgroup \( N \) of \( G \) is normal if for all \( g \in G \), \( gNg^{-1} = N \).

2. **Cyclic Groups**:
   - **Definition**: A group \( G \) is cyclic if there exists \( a \in G \) such that every element of \( G \) can be written as \( a^n \) for some integer \( n \).

#### Week 6- Cyclic Groups and Cosets

1. **Cosets**:
   - **Definition**: For a subgroup \( H \) of \( G \), the left coset of \( H \) with respect to \( g \in G \) is \( gH = \{ gh \mid h \in H \} \).

#### Week 8- Cosets and Lagrange’s Theorem

1. **Lagrange's Theorem**:
   - **Statement**: The order of a subgroup \( H \) of a finite group \( G \) divides the order of \( G \).

#### Week 9- Group Quotients and Rings

1. **Group Quotients**:
   - **Definition**: The set of cosets \( G/N \) forms a group if \( N \) is a normal subgroup of \( G \).

2. **Natural Homomorphism**:
   - **Definition**: The map \( \pi: G \to G/N \) defined by \( \pi(g) = gN \).

3. **New Algebraic Structures: Rings**:
   - **Definition**: A ring is a set equipped with two binary operations (addition and multiplication) satisfying certain axioms similar to those of groups.

---

Feel free to adjust or expand on any sections as needed for your study!
[Timestamp: 2024/11/28 10:48:41]

**user**: Can you re-organise everything to not be organised by week, and instead organised in a way that you think is logical?
[Timestamp: 2024/11/28 10:49:06]

**ai**: Certainly! Here's a reorganized version of the cheat sheet, structured logically by topic:

---

## **MTH2001** Algebraic Structures - Cheat Sheet

>[!TIP] Made by [Your Name]
>Make sure to read this before the exam - I recommend completing a practice test with it so you learn where everything is and can ask if you don't understand something. I might've made mistakes! This cheat sheet is generated based on analysis of past exams and given material. It should also include topics that I don't think will come up, but they theoretically could - these topic explanations will be much more brief.

**Small warning**: the following makes the most sense if you read it all first. It also assumes you have knowledge from previous algebra modules - make sure you know these!

### Core Concepts

#### Groups

1. **Definition**: A set \( G \) with a binary operation \(*\) satisfying:
   - **Closure**: For all \( a, b \in G \), \( a * b \in G \).
   - **Associativity**: For all \( a, b, c \in G \), \( (a * b) * c = a * (b * c) \).
   - **Identity Element**: There exists \( e \in G \) such that for all \( a \in G \), \( e * a = a * e = a \).
   - **Inverses**: For each \( a \in G \), there exists \( b \in G \) such that \( a * b = b * a = e \).

2. **Abelian Groups**:
   - **Definition**: A group \( G \) is abelian if for all \( a, b \in G \), \( a * b = b * a \).

3. **Cyclic Groups**:
   - **Definition**: A group \( G \) is cyclic if there exists \( a \in G \) such that every element of \( G \) can be written as \( a^n \) for some integer \( n \).

#### Subgroups and Cosets

1. **Subgroup**:
   - **Definition**: A subset \( H \) of a group \( G \) is a subgroup if \( H \) itself forms a group under the operation of \( G \).

2. **Cosets**:
   - **Definition**: For a subgroup \( H \) of \( G \), the left coset of \( H \) with respect to \( g \in G \) is \( gH = \{ gh \mid h \in H \} \).

3. **Normal Subgroups**:
   - **Definition**: A subgroup \( N \) of \( G \) is normal if for all \( g \in G \), \( gNg^{-1} = N \).

#### Group Homomorphisms and Isomorphisms

1. **Group Homomorphisms**:
   - **Definition**: A function \( \phi: G \to H \) between two groups that preserves the group operation.

2. **Isomorphisms**:
   - **Definition**: A bijective homomorphism. If such a map exists, \( G \) and \( H \) are isomorphic, denoted \( G \cong H \).

3. **Kernel**:
   - **Definition**: The kernel of a homomorphism \( \phi: G \to H \) is the set \( \ker(\phi) = \{ g \in G \mid \phi(g) = e_H \} \).

#### Group Order and Lagrange’s Theorem

1. **Order of a Group**:
   - **Definition**: The order of a group \( G \), denoted \( |G| \), is the number of elements in \( G \).

2. **Lagrange's Theorem**:
   - **Statement**: The order of a subgroup \( H \) of a finite group \( G \) divides the order of \( G \).

#### Direct Products and Quotients

1. **Direct Products**:
   - **Definition**: The direct product of two groups \( G \) and \( H \), denoted \( G \times H \), is the set of all ordered pairs \( (g, h) \) where \( g \in G \) and \( h \in H \), with the operation defined component-wise.

2. **Group Quotients**:
   - **Definition**: The set of cosets \( G/N \) forms a group if \( N \) is a normal subgroup of \( G \).

3. **Natural Homomorphism**:
   - **Definition**: The map \( \pi: G \to G/N \) defined by \( \pi(g) = gN \).

#### Introduction to Rings

1. **Rings**:
   - **Definition**: A ring is a set equipped with two binary operations (addition and multiplication) satisfying certain axioms similar to those of groups.

---

Feel free to adjust or expand on any sections as needed for your study!
[Timestamp: 2024/11/28 10:49:25]

**user**: That's great! Can you expand on the definitions to have both informal definitions to help understanding, following by an explicit mathematical definition? Could you also expand the cheat sheet to include methods, for example, the methods required to solve the questions I gave you earlier, as well as extrapolating to see what other methods could be used in the actual test.
[Timestamp: 2024/11/28 10:51:40]

**ai**: Certainly! Here's an expanded version of the cheat sheet with informal definitions, explicit mathematical definitions, and methods for solving related problems:

---

## **MTH2001** Algebraic Structures - Cheat Sheet

>[!TIP] Made by [Your Name]
>Make sure to read this before the exam - I recommend completing a practice test with it so you learn where everything is and can ask if you don't understand something. I might've made mistakes! This cheat sheet is generated based on analysis of past exams and given material. It should also include topics that I don't think will come up, but they theoretically could - these topic explanations will be much more brief.

**Small warning**: the following makes the most sense if you read it all first. It also assumes you have knowledge from previous algebra modules - make sure you know these!

### Core Concepts

#### Groups

1. **Informal Definition**: A group is like a mathematical playground where you can combine elements in a specific way, and certain rules always hold true.

2. **Mathematical Definition**: A set \( G \) with a binary operation \(*\) satisfying:
   - **Closure**: For all \( a, b \in G \), \( a * b \in G \).
   - **Associativity**: For all \( a, b, c \in G \), \( (a * b) * c = a * (b * c) \).
   - **Identity Element**: There exists \( e \in G \) such that for all \( a \in G \), \( e * a = a * e = a \).
   - **Inverses**: For each \( a \in G \), there exists \( b \in G \) such that \( a * b = b * a = e \).

3. **Methods**:
   - **Checking Group Properties**: Verify closure, associativity, identity, and inverses for a given set and operation.
   - **Example Problems**: Determine if a set of matrices forms a group under matrix multiplication.

#### Abelian Groups

1. **Informal Definition**: An abelian group is a group where the order of combining elements doesn't matter.

2. **Mathematical Definition**: A group \( G \) is abelian if for all \( a, b \in G \), \( a * b = b * a \).

3. **Methods**:
   - **Checking Commutativity**: Verify that the operation is commutative for all elements in the group.

#### Cyclic Groups

1. **Informal Definition**: A cyclic group is generated by repeatedly applying the group operation to a single element.

2. **Mathematical Definition**: A group \( G \) is cyclic if there exists \( a \in G \) such that every element of \( G \) can be written as \( a^n \) for some integer \( n \).

3. **Methods**:
   - **Finding Generators**: Identify elements that can generate the entire group through repeated operations.

#### Subgroups and Cosets

1. **Subgroup**

   - **Informal Definition**: A subgroup is a smaller group within a larger group that also follows the group rules.

   - **Mathematical Definition**: A subset \( H \) of a group \( G \) is a subgroup if \( H \) itself forms a group under the operation of \( G \).

   - **Methods**:
     - **Subgroup Test**: Check if a subset is closed under the group operation and contains inverses and the identity element.

2. **Cosets**

   - **Informal Definition**: Cosets are like slices of a group, formed by shifting a subgroup around.

   - **Mathematical Definition**: For a subgroup \( H \) of \( G \), the left coset of \( H \) with respect to \( g \in G \) is \( gH = \{ gh \mid h \in H \} \).

   - **Methods**:
     - **Finding Cosets**: Calculate left or right cosets for a given subgroup and element.

3. **Normal Subgroups**

   - **Informal Definition**: A normal subgroup is a subgroup that fits perfectly into the group structure, allowing for group division.

   - **Mathematical Definition**: A subgroup \( N \) of \( G \) is normal if for all \( g \in G \), \( gNg^{-1} = N \).

   - **Methods**:
     - **Normality Test**: Verify that conjugation by any group element leaves the subgroup unchanged.

#### Group Homomorphisms and Isomorphisms

1. **Group Homomorphisms**

   - **Informal Definition**: A homomorphism is a function that translates one group into another while preserving the group structure.

   - **Mathematical Definition**: A function \( \phi: G \to H \) between two groups that preserves the group operation.

   - **Methods**:
     - **Verifying Homomorphisms**: Check that \( \phi(a * b) = \phi(a) * \phi(b) \) for all \( a, b \in G \).

2. **Isomorphisms**

   - **Informal Definition**: An isomorphism is a perfect translation between two groups, showing they are essentially the same.

   - **Mathematical Definition**: A bijective homomorphism. If such a map exists, \( G \) and \( H \) are isomorphic, denoted \( G \cong H \).

   - **Methods**:
     - **Proving Isomorphism**: Show bijection and operation preservation between two groups.

3. **Kernel**

   - **Informal Definition**: The kernel is the set of elements that get squashed to the identity in the target group.

   - **Mathematical Definition**: The kernel of a homomorphism \( \phi: G \to H \) is the set \( \ker(\phi) = \{ g \in G \mid \phi(g) = e_H \} \).

   - **Methods**:
     - **Finding Kernels**: Determine the set of elements mapped to the identity in the codomain.

#### Group Order and Lagrange’s Theorem

1. **Order of a Group**

   - **Informal Definition**: The order of a group is simply the number of elements it contains.

   - **Mathematical Definition**: The order of a group \( G \), denoted \( |G| \), is the number of elements in \( G \).

2. **Lagrange's Theorem**

   - **Informal Definition**: Lagrange's Theorem tells us that the size of any subgroup divides the size of the whole group.

   - **Mathematical Statement**: The order of a subgroup \( H \) of a finite group \( G \) divides the order of \( G \).

   - **Methods**:
     - **Applying Lagrange's Theorem**: Use to determine possible subgroup sizes and verify subgroup properties.

#### Direct Products and Quotients

1. **Direct Products**

   - **Informal Definition**: A direct product combines two groups into a new group, pairing their elements.

   - **Mathematical Definition**: The direct product of two groups \( G \) and \( H \), denoted \( G \times H \), is the set of all ordered pairs \( (g, h) \) where \( g \in G \) and \( h \in H \), with the operation defined component-wise.

   - **Methods**:
     - **Constructing Direct Products**: Form new groups by pairing elements and defining operations component-wise.

2. **Group Quotients**

   - **Informal Definition**: A quotient group is what you get when you divide a group by one of its normal subgroups.

   - **Mathematical Definition**: The set of cosets \( G/N \) forms a group if \( N \) is a normal subgroup of \( G \).

   - **Methods**:
     - **Forming Quotient Groups**: Identify normal subgroups and construct the quotient group from cosets.

3. **Natural Homomorphism**

   - **Informal Definition**: The natural homomorphism is the map that sends each element to its coset in the quotient group.

   - **Mathematical Definition**: The map \( \pi: G \to G/N \) defined by \( \pi(g) = gN \).

   - **Methods**:
     - **Using Natural Homomorphisms**: Map elements to their corresponding cosets in quotient groups.

#### Introduction to Rings

1. **Rings**

   - **Informal Definition**: A ring is a set where you can add, subtract, and multiply, following specific rules.

   - **Mathematical Definition**: A ring is a set equipped with two binary operations (addition and multiplication) satisfying certain axioms similar to those of groups.

   - **Methods**:
     - **Identifying Rings**: Verify the ring axioms, including distributive, associative, and commutative properties.

---

Feel free to adjust or expand on any sections as needed for your study!
[Timestamp: 2024/11/28 10:52:35]

**user**: Two more things!

1. Where you define rings, can you state exactly what the axioms are rather than saying they're similar to the group axioms?
2. Whenever you state a method, can you include a full example?
[Timestamp: 2024/11/28 10:54:13]

**ai**: Certainly! Here's the updated cheat sheet with explicit ring axioms and full examples for each method:

---

## **MTH2001** Algebraic Structures - Cheat Sheet

>[!TIP] Made by [Your Name]
>Make sure to read this before the exam - I recommend completing a practice test with it so you learn where everything is and can ask if you don't understand something. I might've made mistakes! This cheat sheet is generated based on analysis of past exams and given material. It should also include topics that I don't think will come up, but they theoretically could - these topic explanations will be much more brief.

**Small warning**: the following makes the most sense if you read it all first. It also assumes you have knowledge from previous algebra modules - make sure you know these!

### Core Concepts

#### Groups

1. **Informal Definition**: A group is like a mathematical playground where you can combine elements in a specific way, and certain rules always hold true.

2. **Mathematical Definition**: A set \( G \) with a binary operation \(*\) satisfying:
   - **Closure**: For all \( a, b \in G \), \( a * b \in G \).
   - **Associativity**: For all \( a, b, c \in G \), \( (a * b) * c = a * (b * c) \).
   - **Identity Element**: There exists \( e \in G \) such that for all \( a \in G \), \( e * a = a * e = a \).
   - **Inverses**: For each \( a \in G \), there exists \( b \in G \) such that \( a * b = b * a = e \).

3. **Methods**:
   - **Checking Group Properties**: Verify closure, associativity, identity, and inverses for a given set and operation.
   - **Example**: Consider the set of integers \(\mathbb{Z}\) under addition. Check:
     - **Closure**: For any \( a, b \in \mathbb{Z} \), \( a + b \in \mathbb{Z} \).
     - **Associativity**: For any \( a, b, c \in \mathbb{Z} \), \( (a + b) + c = a + (b + c) \).
     - **Identity**: The identity element is 0, since \( a + 0 = a \) for any \( a \in \mathbb{Z} \).
     - **Inverses**: For any \( a \in \mathbb{Z} \), the inverse is \(-a\), since \( a + (-a) = 0 \).

#### Abelian Groups

1. **Informal Definition**: An abelian group is a group where the order of combining elements doesn't matter.

2. **Mathematical Definition**: A group \( G \) is abelian if for all \( a, b \in G \), \( a * b = b * a \).

3. **Methods**:
   - **Checking Commutativity**: Verify that the operation is commutative for all elements in the group.
   - **Example**: Check if \(\mathbb{Z}\) under addition is abelian:
     - For any \( a, b \in \mathbb{Z} \), \( a + b = b + a \).

#### Cyclic Groups

1. **Informal Definition**: A cyclic group is generated by repeatedly applying the group operation to a single element.

2. **Mathematical Definition**: A group \( G \) is cyclic if there exists \( a \in G \) such that every element of \( G \) can be written as \( a^n \) for some integer \( n \).

3. **Methods**:
   - **Finding Generators**: Identify elements that can generate the entire group through repeated operations.
   - **Example**: Consider the group \(\mathbb{Z}_6\) under addition modulo 6. The element 1 is a generator because:
     - \(1, 2, 3, 4, 5, 0\) (mod 6) covers all elements of \(\mathbb{Z}_6\).

#### Subgroups and Cosets

1. **Subgroup**

   - **Informal Definition**: A subgroup is a smaller group within a larger group that also follows the group rules.

   - **Mathematical Definition**: A subset \( H \) of a group \( G \) is a subgroup if \( H \) itself forms a group under the operation of \( G \).

   - **Methods**:
     - **Subgroup Test**: Check if a subset is closed under the group operation and contains inverses and the identity element.
     - **Example**: Verify if \( 2\mathbb{Z} \) (even integers) is a subgroup of \(\mathbb{Z}\):
       - **Closure**: Sum of two even numbers is even.
       - **Identity**: 0 is even.
       - **Inverses**: Negative of an even number is even.

2. **Cosets**

   - **Informal Definition**: Cosets are like slices of a group, formed by shifting a subgroup around.

   - **Mathematical Definition**: For a subgroup \( H \) of \( G \), the left coset of \( H \) with respect to \( g \in G \) is \( gH = \{ gh \mid h \in H \} \).

   - **Methods**:
     - **Finding Cosets**: Calculate left or right cosets for a given subgroup and element.
     - **Example**: Find cosets of \( 2\mathbb{Z} \) in \(\mathbb{Z}\):
       - Cosets are \( 0 + 2\mathbb{Z}, 1 + 2\mathbb{Z} \).

3. **Normal Subgroups**

   - **Informal Definition**: A normal subgroup is a subgroup that fits perfectly into the group structure, allowing for group division.

   - **Mathematical Definition**: A subgroup \( N \) of \( G \) is normal if for all \( g \in G \), \( gNg^{-1} = N \).

   - **Methods**:
     - **Normality Test**: Verify that conjugation by any group element leaves the subgroup unchanged.
     - **Example**: In \(\mathbb{Z}\), every subgroup is normal because \(\mathbb{Z}\) is abelian.

#### Group Homomorphisms and Isomorphisms

1. **Group Homomorphisms**

   - **Informal Definition**: A homomorphism is a function that translates one group into another while preserving the group structure.

   - **Mathematical Definition**: A function \( \phi: G \to H \) between two groups that preserves the group operation.

   - **Methods**:
     - **Verifying Homomorphisms**: Check that \( \phi(a * b) = \phi(a) * \phi(b) \) for all \( a, b \in G \).
     - **Example**: Consider \(\phi: \mathbb{Z} \to \mathbb{Z}_n\) defined by \(\phi(x) = x \mod n\). Verify:
       - For \( a, b \in \mathbb{Z} \), \(\phi(a + b) = (a + b) \mod n = (a \mod n + b \mod n) \mod n = \phi(a) + \phi(b)\).

2. **Isomorphisms**

   - **Informal Definition**: An isomorphism is a perfect translation between two groups, showing they are essentially the same.

   - **Mathematical Definition**: A bijective homomorphism. If such a map exists, \( G \) and \( H \) are isomorphic, denoted \( G \cong H \).

   - **Methods**:
     - **Proving Isomorphism**: Show bijection and operation preservation between two groups.
     - **Example**: Show \(\mathbb{Z}_4 \cong \{1, i, -1, -i\}\) under multiplication:
       - Map: \(0 \mapsto 1, 1 \mapsto i, 2 \mapsto -1, 3 \mapsto -i\).
       - Verify bijection and operation preservation.

3. **Kernel**

   - **Informal Definition**: The kernel is the set of elements that get squashed to the identity in the target group.

   - **Mathematical Definition**: The kernel of a homomorphism \( \phi: G \to H \) is the set \( \ker(\phi) = \{ g \in G \mid \phi(g) = e_H \} \).

   - **Methods**:
     - **Finding Kernels**: Determine the set of elements mapped to the identity in the codomain.
     - **Example**: For \(\phi: \mathbb{Z} \to \mathbb{Z}_6\) defined by \(\phi(x) = x \mod 6\), \(\ker(\phi) = \{6k \mid k \in \mathbb{Z}\}\).

#### Group Order and Lagrange’s Theorem

1. **Order of a Group**

   - **Informal Definition**: The order of a group is simply the number of elements it contains.

   - **Mathematical Definition**: The order of a group \( G \), denoted \( |G| \), is the number of elements in \( G \).

2. **Lagrange's Theorem**

   - **Informal Definition**: Lagrange's Theorem tells us that the size of any subgroup divides the size of the whole group.

   - **Mathematical Statement**: The order of a subgroup \( H \) of a finite group \( G \) divides the order of \( G \).

   - **Methods**:
     - **Applying Lagrange's Theorem**: Use to determine possible subgroup sizes and verify subgroup properties.
     - **Example**: In \(\mathbb{Z}_6\), possible subgroup orders are 1, 2, 3, and 6.

#### Direct Products and Quotients

1. **Direct Products**

   - **Informal Definition**: A direct product combines two groups into a new group, pairing their elements.

   - **Mathematical Definition**: The direct product of two groups \( G \) and \( H \), denoted \( G \times H \), is the set of all ordered pairs \( (g, h) \) where \( g \in G \) and \( h \in H \), with the operation defined component-wise.

   - **Methods**:
     - **Constructing Direct Products**: Form new groups by pairing elements and defining operations component-wise.
     - **Example**: \(\mathbb{Z}_2 \times \mathbb{Z}_3\) consists of pairs \((a, b)\) where \( a \in \mathbb{Z}_2 \) and \( b \in \mathbb{Z}_3 \).

2. **Group Quotients**

   - **Informal Definition**: A quotient group is what you get when you divide a group by one of its normal subgroups.

   - **Mathematical Definition**: The set of cosets \( G/N \) forms a group if \( N \) is a normal subgroup of \( G \).

   - **Methods**:
     - **Forming Quotient Groups**: Identify normal subgroups and construct the quotient group from cosets.
     - **Example**: In \(\mathbb{Z}\), \(\mathbb{Z}/2\mathbb{Z}\) consists of cosets \(0 + 2\mathbb{Z}\) and \(1 + 2\mathbb{Z}\).

3. **Natural Homomorphism**

   - **Informal Definition**: The natural homomorphism is the map that sends each element to its coset in the quotient group.

   - **Mathematical Definition**: The map \( \pi: G \to G/N \) defined by \( \pi(g) = gN \).

   - **Methods**:
     - **Using Natural Homomorphisms**: Map elements to their corresponding cosets in quotient groups.
     - **Example**: For \(\mathbb{Z} \to \mathbb{Z}/2\mathbb{Z}\), map \( x \mapsto x + 2\mathbb{Z} \).

#### Introduction to Rings

1. **Rings**

   - **Informal Definition**: A ring is a set where you can add, subtract, and multiply, following specific rules.

   - **Mathematical Definition**: A ring is a set \( R \) equipped with two binary operations (addition and multiplication) satisfying:
     - **Additive Closure**: For all \( a, b \in R \), \( a + b \in R \).
     - **Additive Associativity**: For all \( a, b, c \in R \), \( (a + b) + c = a + (b + c) \).
     - **Additive Identity**: There exists \( 0 \in R \) such that for all \( a \in R \), \( a + 0 = a \).
     - **Additive Inverses**: For each \( a \in R \), there exists \( -a \in R \) such that \( a + (-a) = 0 \).
     - **Multiplicative Closure**: For all \( a, b \in R \), \( a \cdot b \in R \).
     - **Multiplicative Associativity**: For all \( a, b, c \in R \), \( (a \cdot b) \cdot c = a \cdot (b \cdot c) \).
     - **Distributive Laws**: For all \( a, b, c \in R \), \( a \cdot (b + c) = a \cdot b + a \cdot c \) and \( (a + b) \cdot c = a \cdot c + b \cdot c \).

   - **Methods**:
     - **Identifying Rings**: Verify the ring axioms, including distributive, associative, and commutative properties.
     - **Example**: Check if \(\mathbb{Z}\) is a ring:
       - **Additive Closure**: Sum of integers is an integer.
       - **Additive Identity**: 0 is the identity.
       - **Additive Inverses**: Negative of an integer is an integer.
       - **Multiplicative Closure**: Product of integers is an integer.
       - **Distributive Laws**: Holds for integers.

---

Feel free to adjust or expand on any sections as needed for your study!
[Timestamp: 2024/11/28 10:55:11]

**user**: That's almost perfect! Here's my feedback for the next iteration:

- Expand on cosets to help understanding.
- Expand on normal subgroups method/method example.
- Expand on isomorphism and natural homomorphism method examples.
- When explaining how to find a kernel, you state codomain; can you add a small definition in brackets?
- Expand on kernel method example.
- Explicitly add commutativity to the rings section.
[Timestamp: 2024/11/28 11:06:09]

**ai**: Certainly! Here's the updated cheat sheet with expanded sections and additional clarifications:

---

## **MTH2001** Algebraic Structures - Cheat Sheet

>[!TIP] Made by [Your Name]
>Make sure to read this before the exam - I recommend completing a practice test with it so you learn where everything is and can ask if you don't understand something. I might've made mistakes! This cheat sheet is generated based on analysis of past exams and given material. It should also include topics that I don't think will come up, but they theoretically could - these topic explanations will be much more brief.

**Small warning**: the following makes the most sense if you read it all first. It also assumes you have knowledge from previous algebra modules - make sure you know these!

### Core Concepts

#### Groups

1. **Informal Definition**: A group is like a mathematical playground where you can combine elements in a specific way, and certain rules always hold true.

2. **Mathematical Definition**: A set \( G \) with a binary operation \(*\) satisfying:
   - **Closure**: For all \( a, b \in G \), \( a * b \in G \).
   - **Associativity**: For all \( a, b, c \in G \), \( (a * b) * c = a * (b * c) \).
   - **Identity Element**: There exists \( e \in G \) such that for all \( a \in G \), \( e * a = a * e = a \).
   - **Inverses**: For each \( a \in G \), there exists \( b \in G \) such that \( a * b = b * a = e \).

3. **Methods**:
   - **Checking Group Properties**: Verify closure, associativity, identity, and inverses for a given set and operation.
   - **Example**: Consider the set of integers \(\mathbb{Z}\) under addition. Check:
     - **Closure**: For any \( a, b \in \mathbb{Z} \), \( a + b \in \mathbb{Z} \).
     - **Associativity**: For any \( a, b, c \in \mathbb{Z} \), \( (a + b) + c = a + (b + c) \).
     - **Identity**: The identity element is 0, since \( a + 0 = a \) for any \( a \in \mathbb{Z} \).
     - **Inverses**: For any \( a \in \mathbb{Z} \), the inverse is \(-a\), since \( a + (-a) = 0 \).

#### Abelian Groups

1. **Informal Definition**: An abelian group is a group where the order of combining elements doesn't matter.

2. **Mathematical Definition**: A group \( G \) is abelian if for all \( a, b \in G \), \( a * b = b * a \).

3. **Methods**:
   - **Checking Commutativity**: Verify that the operation is commutative for all elements in the group.
   - **Example**: Check if \(\mathbb{Z}\) under addition is abelian:
     - For any \( a, b \in \mathbb{Z} \), \( a + b = b + a \).

#### Cyclic Groups

1. **Informal Definition**: A cyclic group is generated by repeatedly applying the group operation to a single element.

2. **Mathematical Definition**: A group \( G \) is cyclic if there exists \( a \in G \) such that every element of \( G \) can be written as \( a^n \) for some integer \( n \).

3. **Methods**:
   - **Finding Generators**: Identify elements that can generate the entire group through repeated operations.
   - **Example**: Consider the group \(\mathbb{Z}_6\) under addition modulo 6. The element 1 is a generator because:
     - \(1, 2, 3, 4, 5, 0\) (mod 6) covers all elements of \(\mathbb{Z}_6\).

#### Subgroups and Cosets

1. **Subgroup**

   - **Informal Definition**: A subgroup is a smaller group within a larger group that also follows the group rules.

   - **Mathematical Definition**: A subset \( H \) of a group \( G \) is a subgroup if \( H \) itself forms a group under the operation of \( G \).

   - **Methods**:
     - **Subgroup Test**: Check if a subset is closed under the group operation and contains inverses and the identity element.
     - **Example**: Verify if \( 2\mathbb{Z} \) (even integers) is a subgroup of \(\mathbb{Z}\):
       - **Closure**: Sum of two even numbers is even.
       - **Identity**: 0 is even.
       - **Inverses**: Negative of an even number is even.

2. **Cosets**

   - **Informal Definition**: Cosets are like slices of a group, formed by shifting a subgroup around. They partition the group into equal-sized, non-overlapping pieces.

   - **Mathematical Definition**: For a subgroup \( H \) of \( G \), the left coset of \( H \) with respect to \( g \in G \) is \( gH = \{ gh \mid h \in H \} \). Similarly, the right coset is \( Hg = \{ hg \mid h \in H \} \).

   - **Methods**:
     - **Finding Cosets**: Calculate left or right cosets for a given subgroup and element.
     - **Example**: Find cosets of \( 2\mathbb{Z} \) in \(\mathbb{Z}\):
       - Cosets are \( 0 + 2\mathbb{Z} = \{ \ldots, -4, -2, 0, 2, 4, \ldots \} \) and \( 1 + 2\mathbb{Z} = \{ \ldots, -3, -1, 1, 3, 5, \ldots \} \).

3. **Normal Subgroups**

   - **Informal Definition**: A normal subgroup is a subgroup that fits perfectly into the group structure, allowing for group division.

   - **Mathematical Definition**: A subgroup \( N \) of \( G \) is normal if for all \( g \in G \), \( gNg^{-1} = N \).

   - **Methods**:
     - **Normality Test**: Verify that conjugation by any group element leaves the subgroup unchanged.
     - **Example**: In \(\mathbb{Z}\), every subgroup is normal because \(\mathbb{Z}\) is abelian. For a non-abelian example, consider the subgroup \( A_n \) of the symmetric group \( S_n \), which is normal because it consists of all even permutations.

#### Group Homomorphisms and Isomorphisms

1. **Group Homomorphisms**

   - **Informal Definition**: A homomorphism is a function that translates one group into another while preserving the group structure.

   - **Mathematical Definition**: A function \( \phi: G \to H \) between two groups that preserves the group operation.

   - **Methods**:
     - **Verifying Homomorphisms**: Check that \( \phi(a * b) = \phi(a) * \phi(b) \) for all \( a, b \in G \).
     - **Example**: Consider \(\phi: \mathbb{Z} \to \mathbb{Z}_n\) defined by \(\phi(x) = x \mod n\). Verify:
       - For \( a, b \in \mathbb{Z} \), \(\phi(a + b) = (a + b) \mod n = (a \mod n + b \mod n) \mod n = \phi(a) + \phi(b)\).

2. **Isomorphisms**

   - **Informal Definition**: An isomorphism is a perfect translation between two groups, showing they are essentially the same.

   - **Mathematical Definition**: A bijective homomorphism. If such a map exists, \( G \) and \( H \) are isomorphic, denoted \( G \cong H \).

   - **Methods**:
     - **Proving Isomorphism**: Show bijection and operation preservation between two groups.
     - **Example**: Show \(\mathbb{Z}_4 \cong \{1, i, -1, -i\}\) under multiplication:
       - Map: \(0 \mapsto 1, 1 \mapsto i, 2 \mapsto -1, 3 \mapsto -i\).
       - Verify bijection: Each element of \(\mathbb{Z}_4\) maps uniquely to an element in \(\{1, i, -1, -i\}\).
       - Verify operation preservation: Check that the operation in \(\mathbb{Z}_4\) corresponds to multiplication in \(\{1, i, -1, -i\}\).

3. **Kernel**

   - **Informal Definition**: The kernel is the set of elements that get squashed to the identity in the target group.

   - **Mathematical Definition**: The kernel of a homomorphism \( \phi: G \to H \) is the set \( \ker(\phi) = \{ g \in G \mid \phi(g) = e_H \} \).

   - **Methods**:
     - **Finding Kernels**: Determine the set of elements mapped to the identity in the codomain (the target group of the homomorphism).
     - **Example**: For \(\phi: \mathbb{Z} \to \mathbb{Z}_6\) defined by \(\phi(x) = x \mod 6\), \(\ker(\phi) = \{6k \mid k \in \mathbb{Z}\}\). This is because any integer multiple of 6 maps to 0 in \(\mathbb{Z}_6\).

#### Group Order and Lagrange’s Theorem

1. **Order of a Group**

   - **Informal Definition**: The order of a group is simply the number of elements it contains.

   - **Mathematical Definition**: The order of a group \( G \), denoted \( |G| \), is the number of elements in \( G \).

2. **Lagrange's Theorem**

   - **Informal Definition**: Lagrange's Theorem tells us that the size of any subgroup divides the size of the whole group.

   - **Mathematical Statement**: The order of a subgroup \( H \) of a finite group \( G \) divides the order of \( G \).

   - **Methods**:
     - **Applying Lagrange's Theorem**: Use to determine possible subgroup sizes and verify subgroup properties.
     - **Example**: In \(\mathbb{Z}_6\), possible subgroup orders are 1, 2, 3, and 6.

#### Direct Products and Quotients

1. **Direct Products**

   - **Informal Definition**: A direct product combines two groups into a new group, pairing their elements.

   - **Mathematical Definition**: The direct product of two groups \( G \) and \( H \), denoted \( G \times H \), is the set of all ordered pairs \( (g, h) \) where \( g \in G \) and \( h \in H \), with the operation defined component-wise.

   - **Methods**:
     - **Constructing Direct Products**: Form new groups by pairing elements and defining operations component-wise.
     - **Example**: \(\mathbb{Z}_2 \times \mathbb{Z}_3\) consists of pairs \((a, b)\) where \( a \in \mathbb{Z}_2 \) and \( b \in \mathbb{Z}_3 \).

2. **Group Quotients**

   - **Informal Definition**: A quotient group is what you get when you divide a group by one of its normal subgroups.

   - **Mathematical Definition**: The set of cosets \( G/N \) forms a group if \( N \) is a normal subgroup of \( G \).

   - **Methods**:
     - **Forming Quotient Groups**: Identify normal subgroups and construct the quotient group from cosets.
     - **Example**: In \(\mathbb{Z}\), \(\mathbb{Z}/2\mathbb{Z}\) consists of cosets \(0 + 2\mathbb{Z}\) and \(1 + 2\mathbb{Z}\).

3. **Natural Homomorphism**

   - **Informal Definition**: The natural homomorphism is the map that sends each element to its coset in the quotient group.

   - **Mathematical Definition**: The map \( \pi: G \to G/N \) defined by \( \pi(g) = gN \).

   - **Methods**:
     - **Using Natural Homomorphisms**: Map elements to their corresponding cosets in quotient groups.
     - **Example**: For \(\mathbb{Z} \to \mathbb{Z}/2\mathbb{Z}\), map \( x \mapsto x + 2\mathbb{Z} \). This map sends each integer to its equivalence class modulo 2.

#### Introduction to Rings

1. **Rings**

   - **Informal Definition**: A ring is a set where you can add, subtract, and multiply, following specific rules.

   - **Mathematical Definition**: A ring is a set \( R \) equipped with two binary operations (addition and multiplication) satisfying:
     - **Additive Closure**: For all \( a, b \in R \), \( a + b \in R \).
     - **Additive Associativity**: For all \( a, b, c \in R \), \( (a + b) + c = a + (b + c) \).
     - **Additive Identity**: There exists \( 0 \in R \) such that for all \( a \in R \), \( a + 0 = a \).
     - **Additive Inverses**: For each \( a \in R \), there exists \( -a \in R \) such that \( a + (-a) = 0 \).
     - **Multiplicative Closure**: For all \( a, b \in R \), \( a \cdot b \in R \).
     - **Multiplicative Associativity**: For all \( a, b, c \in R \), \( (a \cdot b) \cdot c = a \cdot (b \cdot c) \).
     - **Distributive Laws**: For all \( a, b, c \in R \), \( a \cdot (b + c) = a \cdot b + a \cdot c \) and \( (a + b) \cdot c = a \cdot c + b \cdot c \).
     - **Commutativity of Addition**: For all \( a, b \in R \), \( a + b = b + a \).

   - **Methods**:
     - **Identifying Rings**: Verify the ring axioms, including distributive, associative, and commutative properties.
     - **Example**: Check if \(\mathbb{Z}\) is a ring:
       - **Additive Closure**: Sum of integers is an integer.
       - **Additive Identity**: 0 is the identity.
       - **Additive Inverses**: Negative of an integer is an integer.
       - **Multiplicative Closure**: Product of integers is an integer.
       - **Distributive Laws**: Holds for integers.
       - **Commutativity of Addition**: For any \( a, b \in \mathbb{Z} \), \( a + b = b + a \).

---

Feel free to adjust or expand on any sections as needed for your study!
[Timestamp: 2024/11/28 11:07:34]

**user**: That's perfect! From now on, you don't have to give me the entire cheat sheet whenever you make a change, just the bits that have changed. Can you do this:

Add a reminder at the top of what sets are what (incl. the special ones), as well as that when we write something like ab we mean a*b, where * is any binary operation, e.g. addition, multiplication, matrix multiplication, etc.
Maybe add a reminder on dot products, too.
[Timestamp: 2024/11/28 11:27:07]

**ai**: Certainly! Here are the additions to the cheat sheet:

---

### Reminders

- **Common Sets**:
  - \(\mathbb{Z}\): Set of all integers.
  - \(\mathbb{Q}\): Set of all rational numbers.
  - \(\mathbb{R}\): Set of all real numbers.
  - \(\mathbb{C}\): Set of all complex numbers.
  - \(\mathbb{N}\): Set of all natural numbers (positive integers, sometimes including zero).

- **Binary Operations**:
  - When we write expressions like \( ab \), it implies \( a * b \), where \(*\) is any binary operation such as addition, multiplication, or matrix multiplication.

- **Dot Products**:
  - The dot product of two vectors \(\mathbf{a} = (a_1, a_2, \ldots, a_n)\) and \(\mathbf{b} = (b_1, b_2, \ldots, b_n)\) is given by:
    \[
    \mathbf{a} \cdot \mathbf{b} = a_1b_1 + a_2b_2 + \ldots + a_nb_n
    \]
  - The dot product is a scalar and is used to determine the angle between vectors and their orthogonality.

--- 

Feel free to let me know if there's anything else you'd like to add or modify!
[Timestamp: 2024/11/28 11:27:16]

**user**: Can you re-write the dot product to be of two matrices?
[Timestamp: 2024/11/28 11:27:35]

**ai**: Certainly! Here's the revised section on the dot product for matrices:

---

- **Dot Products for Matrices**:
  - The dot product (also known as the matrix product) of two matrices \( A \) and \( B \) is defined when the number of columns in \( A \) is equal to the number of rows in \( B \).
  - If \( A \) is an \( m \times n \) matrix and \( B \) is an \( n \times p \) matrix, their product \( C = AB \) is an \( m \times p \) matrix where each element \( c_{ij} \) is calculated as:
    \[
    c_{ij} = \sum_{k=1}^{n} a_{ik}b_{kj}
    \]
  - This operation is used extensively in linear algebra for transformations, solving systems of equations, and more.

---

Let me know if there's anything else you'd like to adjust!
[Timestamp: 2024/11/28 11:27:47]

**user**: What is the set which excludes zero to make itself a group?
[Timestamp: 2024/11/28 11:31:53]

**ai**: The set that excludes zero to form a group is typically the set of non-zero elements of a field under multiplication. For example:

- \(\mathbb{R}^*\): The set of all non-zero real numbers, which forms a group under multiplication.
- \(\mathbb{C}^*\): The set of all non-zero complex numbers, which forms a group under multiplication.
- \(\mathbb{Q}^*\): The set of all non-zero rational numbers, which forms a group under multiplication.

In these cases, the exclusion of zero is necessary because zero does not have a multiplicative inverse, which is required for the set to satisfy the group axioms under multiplication.
[Timestamp: 2024/11/28 11:31:56]

**user**: What about the equivalence class set?
[Timestamp: 2024/11/28 11:34:54]

**ai**: The equivalence class set you're referring to is likely the set of integers modulo \( n \), denoted as \(\mathbb{Z}_n\). When considering the multiplicative group of non-zero elements of \(\mathbb{Z}_n\), we use the set \(\mathbb{Z}_n^*\), which consists of all integers from 1 to \( n-1 \) that are coprime to \( n \).

- **\(\mathbb{Z}_n^*\)**: The set of all integers \( a \) such that \( 1 \leq a < n \) and \(\gcd(a, n) = 1\). This set forms a group under multiplication modulo \( n \).

This set excludes zero and any elements that share a common factor with \( n \) (other than 1) because such elements do not have multiplicative inverses in \(\mathbb{Z}_n\).
[Timestamp: 2024/11/28 11:35:02]

**user**: What is a diagonal matrix?
[Timestamp: 2024/11/28 11:38:50]

**ai**: A diagonal matrix is a special type of square matrix where all the elements outside the main diagonal are zero. The main diagonal itself can contain either zero or non-zero elements. Formally, a matrix \( D \) is a diagonal matrix if:

\[
D = \begin{bmatrix}
d_{11} & 0 & \cdots & 0 \\
0 & d_{22} & \cdots & 0 \\
\vdots & \vdots & \ddots & \vdots \\
0 & 0 & \cdots & d_{nn}
\end{bmatrix}
\]

Here, \( d_{ii} \) are the diagonal elements, and all other elements \( d_{ij} \) (where \( i \neq j \)) are zero. Diagonal matrices are significant because they are easy to work with, especially in operations like matrix multiplication and finding determinants.
[Timestamp: 2024/11/28 11:39:13]

**user**: What is the GL group and SL group?
[Timestamp: 2024/11/28 11:56:02]

**user**: What is the GL group and SL group?
[Timestamp: 2024/11/28 12:05:34]