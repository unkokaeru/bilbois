- [[../../../../../../Auto-Generated/Attachments/MTH2008 Scientific Computing Pre-Lecture 2 NOTES.pdf|Lecture Notes]].
- [[../../../../../../Auto-Generated/Attachments/MTH2008 Scientific Computing Pre-Lecture 2 DETAILED NOTES.pdf|Detailed Sorting Notes]].
- Lecture: [[MTH2008 Scientific Computing Lecture 2]].

### Bubble Sort Algorithm

A simple comparison-based sorting algorithm that repeatedly:
1. Steps through a list,
2. Compares adjacent elements,
3. **Swaps them** if they're in the wrong order (ascending/descending).

Each full pass through the list moves the next largest unsorted element to its final position ("*bubbling up*").

##### Key Properties

- Time Complexity: O(n²) average/worst case (inefficient for large datasets)
- Space Complexity: O(1) (in-place sorting)
- **Stable**: Preserves order of equal elements
- Adaptive: Can exit early if list becomes sorted

**C++ Implementation**:

```cpp
void bubbleSort(int arr[], int n) {
	for (int i = 0; i < n-1; i++) { // Pass counter
		bool swapped = false;
		for (int j = 0; j < n-i-1; j++) { // Reduce unsorted portion each pass
			if (arr[j] > arr[j+1]) {// Compare adjacent elements
				std::swap(arr[j], arr[j+1]); // Swap if out of order
				swapped = true;
			}
		}
		if (!swapped) break; // Early exit if no swaps (list already sorted)
	}
}
```

### Monte Carlo Methods

Developed during the Manhattan Project (1940s) by Stanislaw Ulam & John von Neumann to solve neutron diffusion problems using stochastic sampling. Named after Monte Carlo Casino due to inherent randomness.

Use **random number sampling** to approximate solutions to:

- Complex integrals
- Optimization problems
- Probabilistic modelling

#### Mathematical Application: Calculating Logarithms

**Compute $\ln(a)$ using Monte Carlo integration.**

1. Recognise that: $\ln(a) = \int_{1}^{a} \frac{1}{x} dx$.
2. Use Monte Carlo integration over interval $[1, a]$:
	- Generate $N$ random points $(x, y)$ in rectangle $[1, a] \times [0, 1]$.
	- Count points below curve $y \leq \frac{1}{x}$ (successes = $S$)
3. Approximate integral: $\ln(a) \approx \frac{S}{N} \times (a - 1)$.

```cpp
#include <random>
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

- **Pro**: Simple implementation for high-dimensional integrals
- **Con**: Requires large N for accuracy (computationally expensive)
