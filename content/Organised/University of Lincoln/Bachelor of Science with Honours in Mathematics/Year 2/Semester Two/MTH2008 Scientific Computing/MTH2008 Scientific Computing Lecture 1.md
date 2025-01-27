- Previous Lecture: n/a.
- Pre-Lecture: [[MTH2008 Scientific Computing Pre-Lecture 1]].
- Flashcards: [[MTH2008 Scientific Computing Flashcards]].
- Next Lecture: [[MTH2008 Scientific Computing Lecture 2]].

## What are the ideal properties of an RNG?

- **Repeatability**: given the same starting point (seed) will generate the same sequence of random numbers - useful for testing.
- **Long Cycle Length**: stays random for very long sequences of numbers before repeating or becoming predictable.
- **High Speed**: can generate numbers very quickly.

## Why wouldn't we use a true RNG?

- They have no seed which you could use to create the same sequence twice; they're inherently **not repeatable**.
- Useful for **high-security** systems.
- Generated with unpredictable physical processes, like **quantum phenomena** or **radioactive decay**.
- Since they're truly random, they have the same count of each number within an interval (**uniformly distributed**).

## The benefits of computational (pseudo) RNGs

- Align with the ideal properties:
	- Repeatable,
	- Portable (between programming languages),
	- **Closely approximate** the statistical properties of uniformity and independence (i.e. they're random enough for statistics).

## Examples of PRNGs

- Most compter **systems come with a pseudo-RNG** (PRNG) pre-installed.
- These are **fast, but have short cycle length** (random sequences repeat after not many elements) and strong correlation patterns.
- A common example is a **Linear Congruential Generators**. This generates a sequence with the following **recurrence relation**: $X_{n+1}=(aX_{n}+c)\text{ mod }m:a,c,m\in \mathbb{Z}$.
	- The period of the sequence is at most $m$, but can be shorter depending on the other constants, including the seed $X_{0}$.
	- If $c\ne0$, **mixed** congruential method, otherwise **multiplicative**.
	- Useful demo here: https://demonstrations.wolfram.com/LinearCongruentialGenerators.

![[../../../../../../Auto-Generated/Attachments/Pasted image 20250126213456.png]]

Many useful sets of parameters have been found for this PRNGs, for example [Numerical Recipes](https://www.cec.uchile.cl/cinetica/pcordero/MC_libros/NumericalRecipesinC.pdf) recommends $m=2^{32},a=1664525,c=1013904223$.

> [!NOTE] I wonder how these were found?

## Writing PRNGs and applying them

**Task 1.1**: Write a C++ function to generate random numbers using the **mixed linear congruential** generator algorithm, i.e. follows...

$$
X_{n+1}=(aX_{n}+c)\text{ mod }m:a,c,m \text{ are well-chosen non-zero integers}
$$

```cpp
/**
 * @brief Generate random numbers using a mixed linear congruential generator.
 * 
 * @details Generates random numbers using the formula:
 * \f[
 * X_{n+1} = (a \times X_n + c) \mod m
 * \f]
 * where \f$X_n\f$ is the previous random number, \f$X_{n+1}\f$ is the next random number,
 * \f$a\f$ is the multiplier, \f$c\f$ is the increment, and \f$m\f$ is the modulus.
 * 
 * @note Designed to experiment with random number generation using a mixed linear congruential
 * generator.
 * 
 * @param seed The initial seed value for the random number generator.
 * @param multiplier The multiplier for the random number generator.
 * @param increment The increment for the random number generator.
 * @param modulus The modulus for the random number generator.
 * @param count The number of random numbers to generate.
 * 
 * @throw std::invalid_argument Throws an error if the multiplier, increment, or modulus are less
 * than or equal to 0.
 * 
 * @example
 * \code{.cpp}
 * generate_random_numbers(1, 5, 3, 16, 5);
 * \endcode
 * 
 * Expected Output:
 * \code{.plaintext}
 * Random Numbers:
 *  1: 8
 *  2: 11
 *  3: 14
 *  4: 1
 *  5: 4
 * \endcode
 */
void generate_random_numbers(int seed, int multiplier, int increment, int modulus, int count) {
    /* Throw an error if the multiplier, increment, or modulus are less than or equal to 0. */
    if (multiplier <= 0 || increment <= 0 || modulus <= 0) {
        throw std::invalid_argument("Error: multiplier, increment, and modulus "
                                    "must be greater than 0!");
    }

    /* Initialise the random number generator with the seed value. */
    int random_number = seed;

    /* Output the random numbers to the console. */
    std::cout << "Random Numbers:" << std::endl;
    for (int i = 1; i <= count; i++) {
        /* Calculate the next random number with the mixed linear congruential generator formula. */
        random_number = (multiplier * random_number + increment) % modulus;

        /* Output the random number to the console. */
        std::cout << std::setw(2) << i << ": " << random_number << std::endl;
    }
}
```

**Task 1.2**: Write a C++ program to extract six different random numbers (using the previously developed algorithm) in the interval $[1,50]$ and print the lucky numbers on screen. **To extend this**, evaluate the number of extractions required to win with $2,3,4,5,6$ matching numbers out of $6$, given an arbitrary selection.

```cpp
/**
 * @file l01-randomness-generator.cpp
 * @author William Fayers (william@fayers.com)
 * @brief Bingo game simulation using a mixed linear congruential generator
 * @version 0.2.0
 * @date 2025-01-26
 * 
 * @copyright Copyright (c) 2025
 * 
 */

#include <iostream>
#include <vector>
#include <cmath>
#include <iomanip>
#include <stdexcept>
#include <ctime>
#include <algorithm>
#include <thread>
#include <chrono>


/**
 * @brief Generate random numbers using a mixed linear congruential generator.
 * 
 * @details Generates random numbers using the formula:
 * \f[
 * X_{n+1} = (a \times X_n + c) \mod m
 * \f]
 * where \f$X_n\f$ is the previous random number, \f$X_{n+1}\f$ is the next random number,
 * \f$a\f$ is the multiplier, \f$c\f$ is the increment, and \f$m\f$ is the modulus.
 * 
 * @note Results are adjusted to produce numbers in the 1-modulus range
 * 
 * @param seed The initial seed value for the random number generator
 * @param multiplier The multiplier for the random number generator
 * @param increment The increment for the random number generator
 * @param modulus The modulus for the random number generator
 * @param count The number of random numbers to generate
 * 
 * @throw std::invalid_argument Throws an error if the multiplier, increment, or modulus are less
 * than or equal to 0.
 * 
 * @return std::vector<int> A vector containing the generated random numbers
 */
std::vector<int> generate_random_numbers(
    int seed,
    int multiplier,
    int increment,
    int modulus,
    int count)
{
    if (multiplier <= 0 || increment <= 0 || modulus <= 0)
    {
        throw std::invalid_argument("Error: multiplier, increment, and modulus "
                                    "must be greater than 0!");
    }

    int current_number = seed;
    std::vector<int> numbers;

    for (int iteration = 1; iteration <= count; iteration++)
    {
        current_number = (multiplier * current_number + increment) % modulus;
        numbers.push_back(current_number + 1);  // Adjust to 1-modulus range
    }

    return numbers;
}


/**
 * @brief Main function for the bingo game simulation program
 * 
 * @details Provides interactive bingo game experience where users can:
 * 1. Choose how many numbers to guess (1-6)
 * 2. Enter their unique guesses
 * 3. See their calculated probability of winning
 * 4. Experience a dramatic reveal of the bingo numbers
 * 
 * @return int Returns 0 if the program exits successfully
 */
int main()
{
    // Generate 6 unique bingo numbers using current time as seed
    const int NUM_BINGO_NUMBERS = 6;
    const int NUMBER_RANGE = 50;
    std::vector<int> bingo_numbers = generate_random_numbers(
        static_cast<int>(time(0)),  // Seed with current time
        5,                          // Multiplier
        3,                          // Increment
        NUMBER_RANGE,               // Modulus (numbers will be 1-50)
        NUM_BINGO_NUMBERS           // Number of numbers to generate
    );

    // Get valid guess count from user
    int guess_count;
    do
    {
        std::cout << "How many numbers do you want to guess (1-" << NUM_BINGO_NUMBERS << ")? ";
        std::cin >> guess_count;
        if (guess_count < 1 || guess_count > NUM_BINGO_NUMBERS) {
            std::cout << "Please enter a number between 1 and " << NUM_BINGO_NUMBERS << ", "
                            "with no repeats!\n";
        }
    } while (guess_count < 1 || guess_count > NUM_BINGO_NUMBERS);

    // Collect valid user guesses
    std::vector<int> user_guesses;
    std::cout << "Enter your " << guess_count 
                << " unique numbers between 1 and " << NUMBER_RANGE << ":\n";

    for (int input_iteration = 0; input_iteration < guess_count; input_iteration++) {
        int current_guess;
        std::cin >> current_guess;
        
        // Validate input range and uniqueness
        while (current_guess < 1 || current_guess > NUMBER_RANGE || 
                std::find(user_guesses.begin(), user_guesses.end(), current_guess)
                != user_guesses.end())
        {
            std::cout << "Invalid input. Enter a unique number between 1 and " 
                        << NUMBER_RANGE << ": ";
            std::cin >> current_guess;
        }
        user_guesses.push_back(current_guess);
    }

    // Calculate probability using combinatorial mathematics
    double win_probability = 1.0;
    for (int probability_iteration = 0;
        probability_iteration < guess_count;
        probability_iteration++)
    {
        win_probability *= static_cast<double>(NUM_BINGO_NUMBERS - probability_iteration) 
                            / (NUMBER_RANGE - probability_iteration);
    }
    
    std::cout << std::fixed << std::setprecision(10);
    std::cout << "\nYour chance of winning is: " << win_probability * 100 << "%\n";

    // Check if all guesses match bingo numbers
    bool has_won = true;
    for (int user_guess : user_guesses)
    {
        if (std::find(bingo_numbers.begin(), bingo_numbers.end(), user_guess)
            == bingo_numbers.end())
        {
            has_won = false;
            break;
        }
    }

    // Dramatic number reveal with delay
    std::cout << "\nDrum roll...\nThe Bingo Numbers are: \n";
    for (int bingo_number : bingo_numbers)
    {
        std::cout << std::setw(2) << bingo_number << " ";
        std::cout.flush();  // Ensure immediate output
        std::this_thread::sleep_for(std::chrono::milliseconds(500));  // Dramatic pause
    }
    std::cout << "\n\n";

    // Final result announcement
    if (has_won)
    {
        std::cout << "!!! WINNER WINNER CHICKEN DINNER !!! All your numbers are there!\n";
    } else {
        std::cout << "Sorry, no luck this time. Better luck next time!\n";
    }

    return 0;
}
```