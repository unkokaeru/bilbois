- Previous Lecture: [[MTH2008 Scientific Computing Lecture 1]].
- Pre-Lecture: [[MTH2008 Scientific Computing Pre-Lecture 2]].
- Flashcards: [[MTH2008 Scientific Computing Flashcards]].
- Next Lecture: [[MTH2008 Scientific Computing Lecture 3]].

## How does the Bubble Sort algorithm work?

### What is the core process of Bubble Sort?

Bubble Sort is a **comparison-based algorithm** that repeatedly:
1. **Iterates through a list**, comparing adjacent elements.
2. **Swaps them** if they are in the wrong order (ascending/descending).
3. **Reduces the unsorted portion** of the list with each pass, as the largest unsorted element "bubbles up" to its correct position.

### What are its key properties?

- **Time Complexity**:
	- Average/Worst Case: $O(n^2)$ (inefficient for large datasets).
	- Best Case: $O(n)$ (if the list is already sorted).
- **Space Complexity**: $O(1)$ (in-place sorting).
- **Stability**: Preserves the order of equal elements.
- **Adaptive**: Can exit early if the list becomes sorted during passes.

**C++ Implementation**:
```cpp
void bubbleSort(int arr[], int n) {
	for (int i = 0; i < n-1; i++) {
		bool swapped = false;
		for (int j = 0; j < n-i-1; j++) {
			if (arr[j] > arr[j+1]) {
				std::swap(arr[j], arr[j+1]);
				swapped = true;
			}
		}
		if (!swapped) break; // Early exit
	}
}
```

## What are Monte Carlo methods, and how are they applied?

### What defines a Monte Carlo method?

Monte Carlo methods use **stochastic (random) sampling** to approximate solutions to deterministic problems. Developed during the Manhattan Project (1940s), they are named after the Monte Carlo Casino due to their reliance on randomness.

### What problems can they solve?

- **Numerical integration** (e.g., calculating $\ln(a)$).
- **Optimization** (e.g., finding minima/maxima).
- **Probabilistic modelling** (e.g., simulating particle behaviour).

#### **Example**: Approximating $\ln(a)$ via Monte Carlo Integration

1. **Express $\ln(a)$ as an integral**:
 $$
 \ln(a) = \int_{1}^{a} \frac{1}{x} \, dx
 $$
2. **Generate $N$ random points** in the rectangle $[1, a] \times [0, 1]$.
3. **Count successes**: Points below $y = \frac{1}{x}$.
4. **Approximate**:
 $$
 \ln(a) \approx \frac{\text{successes}}{N} \times (a - 1)
 $$

**C++ Implementation**:
```cpp
double monteCarloLog(double a, int samples) {
	std::random_device rd;
	std::mt19937 gen(rd());
	std::uniform_real_distribution<> x_dist(1.0, a);
	std::uniform_real_distribution<> y_dist(0.0, 1.0);
	int successes = 0;
	for(int i=0; i<samples; ++i) {
		double x = x_dist(gen);
		double y = y_dist(gen);
		if(y <= 1.0/x) successes++;
	}
	return (a - 1.0) * successes / samples;
}
```

**Pros & Cons**:
- **Pro**: Simple to implement for high-dimensional integrals.
- **Con**: Requires large $N$ for accuracy (computationally expensive).

## How can Monte Carlo methods approximate $\pi$?

### What is the geometric intuition?

1. **Unit Circle Area**: $\pi r^2 = \pi$ (for $r = 1$).
2. **Square Area**: $(2r)^2 = 4$ (for $r = 1$).
3. **Ratio**: $\pi/4 \approx$ fraction of random points inside the circle.

**Algorithm**:
1. Generate $N$ random points in $[-1, 1] \times [-1, 1]$.
2. Count points inside the unit circle: $x^2 + y^2 \leq 1$.
3. Approximate $\pi$:
 $$
 \pi \approx 4 \times \frac{\text{points inside circle}}{N}
 $$

**C++ Implementation**:
```cpp
double calculate_pi_monte_carlo(int iterationCount) {
	std::random_device rd;
	std::mt19937 gen(rd());
	std::uniform_real_distribution<> dist(-1.0, 1.0);
	int inside = 0;
	for (int i = 0; i < iterationCount; ++i) {
		double x = dist(gen), y = dist(gen);
		if (x*x + y*y <= 1.0) inside++;
	}
	return 4.0 * inside / iterationCount;
}
```

## How does the accuracy of Monte Carlo improve with iterations?

### Demonstrating convergence for $\pi$:

```cpp
void demonstrate_pi_convergence(int max_iter, int steps) {
	int step_size = max_iter / steps;
	for (int step = 1; step <= steps; ++step) {
		int iters = step * step_size;
		double pi_approx = calculate_pi_monte_carlo(iters);
		std::cout << "Iterations: " << iters
				  << "Approx: " << pi_approx
				  << "Error: " << std::fabs(pi_approx - M_PI)
				  << std::endl;
	}
}
```

**Output Example**:

```
Iterations: 1000 Approx: 3.132 Error: 0.00959...
Iterations: 10000 Approx: 3.1416 Error: 0.00001...
```

**Key Insight**: Error decreases as $\sim \frac{1}{\sqrt{N}}$, highlighting the trade-off between computational cost and precision.

**Key Takeaways**:
- **Bubble Sort** is simple but inefficient for large datasets.
- **Monte Carlo methods** leverage randomness for approximations, useful in high-dimensional problems.
- **Convergence** in Monte Carlo is probabilistic, requiring careful balance between iterations and accuracy.