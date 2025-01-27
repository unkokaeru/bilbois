**Front**: What are the three ideal properties of a Random Number Generator (RNG)?

**Back**: Repeatability, long cycle length, and high speed.

---

**Front**: Why is **repeatability** important in an RNG?

**Back**: It allows generating the same sequence of numbers using a seed, which is critical for testing and debugging.

---

**Front**: What is the significance of a **long cycle length** in an RNG?

**Back**: It ensures the sequence remains random for a large number of values before repeating or becoming predictable.

---

**Front**: Why would a true RNG be unsuitable for scenarios requiring reproducibility?

**Back**: True RNGs lack a seed, making them inherently non-repeatable due to reliance on unpredictable physical processes.

---

**Front**: Name two physical processes used to generate true random numbers.

**Back**: Quantum phenomena or radioactive decay.

---

**Front**: What statistical property do true RNGs exhibit within an interval?

**Back**: Uniform distribution (equal count of each number in the interval).

---

**Front**: List three benefits of computational (pseudo) RNGs over true RNGs.

**Back**: Repeatability, portability across systems, and approximation of statistical properties like uniformity and independence.

---

**Front**: What is a major drawback of many pre-installed PRNGs in computer systems?

**Back**: Short cycle lengths and strong correlation patterns in generated sequences.

---

**Front**: What is the recurrence relation for a **Linear Congruential Generator (LCG)**?

**Back**: $X_{n+1} = (aX_n + c) \mod m$, where $a, c, m$ are integers.

---

**Front**: How does a **mixed congruential method** differ from a **multiplicative congruential method**?

**Back**: Mixed uses $c \neq 0$, while multiplicative sets $c = 0$.

---

**Front**: What parameters does Numerical Recipes recommend for an LCG?

**Back**: $m = 2^{32}$, $a = 1664525$, $c = 1013904223$.

---

**Front**: What is the maximum possible period of an LCG sequence?

**Back**: At most $m$ (the modulus value), but it can be shorter depending on constants and seed.

---

**Front**: Why are PRNGs considered "random enough" for statistical applications?

**Back**: They closely approximate uniformity and independence in generated sequences.

---

**Front**: What key trade-off exists for PRNGs like LCGs?

**Back**: Speed vs. cycle length and correlation issues (fast but shorter cycles).

---
