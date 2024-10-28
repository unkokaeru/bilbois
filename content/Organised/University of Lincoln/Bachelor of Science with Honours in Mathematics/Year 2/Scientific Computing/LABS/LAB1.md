## MTH2008 Scientific Computing LAB1

### Objectives

1. Learn the basics of using Microsoft Visual Studio, or Microsoft Visual Studio Code.
2. Compile your first C++ program.

### Tasks

#### Task 1: Writing a simple C++ program

Either open/install Visual Studio or VS Code, using guides on Blackboard if required.

Then, create a new project, selecting the `Win32 Console Application C++` template, if possible. You can name this new project something simple, like `lab1-task1.cpp`.

Your new project should start with some simple code, but you can remove that. Instead, replace it with this:

```cpp
/**
 * @file basic_use-using_cout.cpp
 * @author YOUR NAME (YOUR EMAIL)
 * @brief Explore using the cout statement
 * @version 0.1.0
 * @date 20xx-xx-xx
 *
 * @copyright Copyright (c) 20xx
 *
 */
#include <iostream>


int main() {
    /* Print a welcome message */
    std::cout << "Welcome to C++ Programming\n";

	/* Return 0 to represnt success */
    return 0;
}
```

Afterwards, you can **compile and build** the code, checking if any errors occur. If not, then feel free to experiment with the code to see what happens! Hopefully it'll print `Welcome to C++ Programming` and then say something like `Press any key to continue...`.

#### Task 2: Exploring the welcome program

For this task, we'll break down the program. Make sure to comment the code so you remember!

First of all, comments in C++ are represent with `/*` or `//`, but you need to make sure to stay consistent with one style. We'll use `/*` for the rest of the course, so we can differentiate between **docstrings** easier - these are the big block comments like at the start of the welcome program.

This **docstring** explains to anyone reading it (including any documentation building programs) what the filename is, who wrote it, etc.

Next, we have the **include** statement: `#include <iostream>`. This "includes" the package with all of the input/output stream functions, like the `std::cout` command we used. It's part of the **standard namespace** (packages included with a default C++ installation), hence we use the `std::` part.

Optionally, we could also include the line `using namespace std;` so that we don't have to write `std::` repeatedly, but that can cause package conflicts so it's common practice not to.

The main function then return an `int` type - these will be explained more in later sessions. This is because the main function always returns $0$ or $1$ for success or failure, respectively, hence we return $0$ at the end to indicate a successful run.

Finally, the `cout` function stands for **character out**, which prints out characters to the console with the **insertion operator** `<<`, inserting data into the function. All lines then end with a `;` to tell the compiler where lines end.

...