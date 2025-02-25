
**NOTE**: EVERYTHING IS VERY MUCH SUBJECT TO CHANGE - even titles, structure, etc.! Change however you think is best :)

# A Brief Introduction to Bessel Functions

A short abstract.

## Introduction

2-3 pages of introduction.

## **Chapter 1**: Derivation of the Bessel Differential Equation
*to be written by William Fayers*.

- **Physical and Mathematical Origins**:
	- Discuss physical models (e.g. wave equations in cylindrical coordinates, heat conduction) that lead naturally to the Bessel differential equation.
	- Derive the standard form of the Bessel equation: $x^{2}y^{\prime\prime} + xy^{\prime} + (x^{2} - \nu^{2})y = 0$.
- **Foundational Techniques**:
	- Introduce singular differential equations.
	- Provide a brief overview of the Frobenius method as a tool for obtaining series solutions.
- **Suggested Detail**: Aim for approximately 3500–4000 words, with integrated examples (possibly some short code snippets) to illustrate the derivation process.

## **Chapter 2**: Bessel Functions as Solutions

Short overview paragraph, incl. comparison

### **Chapter 2.1**: Bessel Functions of the First Kind
*to be written by Tom Ward*.

- **Deep Dive into $J_\nu(x)$**:
	- Present the Frobenius series solution for $J_\nu(x)$, discussing convergence issues and the treatment of integer versus non-integer orders.
	- Analyse the behaviour of $J_\nu(x)$ at $x = 0$ (regular, finite) and as $x \to \infty$ (oscillatory decay).
- **Key Properties Specific to $J_\nu(x)$**:
	- Detail relevant recurrence relations and the Wronskian for $J_\nu(x)$.
	- Include some of the integral representations that are particularly useful for $J_\nu(x)$.
- **Programming Integration**:  
	- Offer computational examples (using, say, Python or MATLAB) to illustrate the series computation and visualise the function’s behaviour.
- **Suggested Detail**: Approximately 4000–5000 words.

### **Chapter 2.2**: Bessel Functions of the Second Kind
*to be written by Alex Rushworth*.

- **Exploration of $Y_\nu(x)$**:
	- Explain the derivation of $Y_\nu(x)$ via a limiting process, particularly for non-integer orders.
	- Discuss the singular behaviour at $x = 0$ and the corresponding physical interpretations.
- **Complementary Properties**:
	- Cover recurrence relations and Wronskian aspects that complement those of $J_\nu(x)$.
	- Present integral representations pertinent to $Y_\nu(x)$.
- **Programming Integration**:  
	- Provide examples that contrast $Y_\nu(x)$ with $J_\nu(x)$, emphasising numerical challenges (such as handling singularities).
- **Suggested Detail**: Approximately 4000–5000 words.

## **Chapter 3**: Modified and Spherical Bessel Functions
*to be written by Hayden Loyseau*.

- **Modified Bessel Functions $I_\nu(x)$ and $K_\nu(x)$**:
	- Derive these functions from the modified Bessel equation: $x^{2}y^{\prime\prime} + xy^{\prime} - (x^{2} + \nu^{2})y = 0$.
	- Compare their asymptotic behaviours—exponential growth versus decaying trends.
- **Spherical Bessel Functions $j_n(x)$ and $y_n(x)$**:
	- Explain their origin from the Helmholtz equation in spherical coordinates.
	- Illustrate the connection with sine and cosine functions and discuss elementary representations.
- **Programming Integration**:  
	- Embed computational examples that demonstrate how to compute and visualise these functions, highlighting the contrasts with the standard Bessel functions.
- **Suggested Detail**: Roughly 4000–4500 words.

## **Chapter 4**: Mathematical Properties and Tools
*to be written by Torin Anderson*.

- **Orthogonality and Series Expansions**:
	- Discuss the weighted orthogonality of functions like $J_\nu(kx)$ over intervals defined by their zeros.
	- Explore Fourier–Bessel series expansions.
- **Zeros and Asymptotic Analysis**:
	- Analyse the zeros of Bessel functions, including their asymptotic spacing and methods for numerical estimation.
	- Present series expansions for small $x$ (Taylor-like series) and large $x$ (Hankel’s asymptotic forms).
- **Suggested Detail**: Approximately 4000–5000 words, with possible programming demonstrations on how to compute zeros and plot asymptotic behaviour.

## **Chapter 5**: Boundary Conditions and Eigenvalue Problems
*to be written by Katie Arnold*.

- **Impact of Boundary Conditions**:
	- Examine how boundary conditions select between the finite solutions (such as $J_\nu$) and the singular solutions (such as $Y_\nu$) in various domains.
- **Eigenvalue Problems**:
	- Apply Bessel functions to model eigenvalue problems in contexts like vibrating circular membranes (drumheads) and waveguide cut-off frequencies.
- **Programming Integration**:  
	- Integrate computational approaches to numerically solve eigenvalue problems and simulate physical systems.
- **Suggested Detail**: Approximately 3500–4500 words.

## **Chapter 6**: Applications in Science and Engineering
*to be written by Daniel Morris*.

- **Real-World Applications**:
	- Detail applications in physics and engineering: cylindrical waveguides (electromagnetism), quantum particles in cylindrical boxes, and heat transfer in radial geometries.
- **Cross-Disciplinary Perspectives**:
	- Discuss the role of Bessel functions in signal processing (e.g. Bessel filters) and in optics (diffraction patterns).
- **Programming Integration**:  
	- Provide case studies and computational examples that demonstrate how Bessel functions are applied in practice.
- **Suggested Detail**: Roughly 4000–5000 words.

## Summary

1-3 pages of summary.

## Bibliography & Appendices

Following IEEE style and including minutes.