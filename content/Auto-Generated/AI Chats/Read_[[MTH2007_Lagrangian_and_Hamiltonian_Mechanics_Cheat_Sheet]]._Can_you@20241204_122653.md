---
epoch: 1733315213487
modelKey: gpt-4o-mini|openai
tags:
  - copilot-conversation
---

**user**: Read [[../../Organised/University of Lincoln/Bachelor of Science with Honours in Mathematics/Year 2/Lagrangian and Hamiltonian Mechanics/MTH2007 Lagrangian and Hamiltonian Mechanics Cheat Sheet old bits]]. Can you write me a small section on moments of intertia?
[Timestamp: 2024/12/04 12:26:53]

**ai**: ### Moments of Inertia

**Definition**: The moment of inertia (I) is a scalar value that measures how difficult it is to change the rotational motion of an object about a given axis. It depends on the mass distribution of the object relative to the axis of rotation.

#### 1. **Standard Moments of Inertia for Common Shapes**

- **Thin Hoop** (radius \( R \), mass \( M \)):
  \[
  I = MR^2
  \]

- **Solid Cylinder** (radius \( R \), height \( h \), mass \( M \)):
  \[
  I = \frac{1}{2} MR^2
  \]

- **Solid Sphere** (radius \( R \), mass \( M \)):
  \[
  I = \frac{2}{5} MR^2
  \]

- **Rod about Center** (length \( L \), mass \( M \)):
  \[
  I = \frac{1}{12} ML^2
  \]

- **Rod about End** (length \( L \), mass \( M \)):
  \[
  I = \frac{1}{3} ML^2
  \]

#### 2. **Parallel Axis Theorem**

The parallel axis theorem allows you to calculate the moment of inertia about any axis parallel to an axis through the center of mass. It states:
\[
I = I_{\text{cm}} + Md^2
\]
where:
- \( I \) is the moment of inertia about the new axis,
- \( I_{\text{cm}} \) is the moment of inertia about the center of mass axis,
- \( M \) is the mass of the object,
- \( d \) is the distance between the two axes.

#### 3. **Perpendicular Axis Theorem**

For planar objects, the perpendicular axis theorem relates the moment of inertia about an axis perpendicular to the plane to the moments about two orthogonal axes in the plane:
\[
I_z = I_x + I_y
\]
where:
- \( I_z \) is the moment of inertia about the perpendicular axis,
- \( I_x \) and \( I_y \) are the moments of inertia about the two axes in the plane.

#### 4. **Composite Bodies**

To find the moment of inertia for composite bodies, break the object down into simpler shapes, calculate the moment of inertia for each shape, and sum them:
\[
I_{\text{total}} = \sum_{i} I_i
\]
where \( I_i \) is the moment of inertia of each component about the desired axis.

### Example Calculation

For a **hollow cylinder** made of two thin hoops:
\[
I = 2 \cdot MR^2 = 2MR^2
\]

This section provides a concise overview of moments of inertia, including standard values, theorems for calculating inertia about different axes, and methods for composite bodies.
[Timestamp: 2024/12/04 12:27:00]