**user**: Do you know about CC: Tweaked, the Minecraft mod?

**ai**: Yes, CC: Tweaked is a popular mod for Minecraft that enhances the ComputerCraft mod by adding new features and improvements. It allows players to use programmable computers and turtles within the game, enabling them to automate tasks, create complex systems, and even develop games using the Lua programming language. CC: Tweaked expands on the original ComputerCraft by introducing new blocks, items, and functionalities, making it a favorite among players who enjoy coding and automation in Minecraft. If you have specific questions or need information about certain features, feel free to ask!

**user**: I want to make a Lua library for it, which will include packages for logging and a command line interface. However, this is my first Lua project (I've done python before, here's my [[../../Organised/Programming/Python/CONTRIBUTING]] file for that). What is a good project structure for this library? Can you also think of a clever name for it? My brother called his Lexicon because his name is Lexy. My name is Will/William/Bilbo.

Here's my standard Python project structure, so you know what I'm used to:

{{ cookiecutter.__project_name_dashed }}
├── .gitchangelog.rc
├── .github
│   └── workflows
│       ├── continuous_integration.yml
│       └── todo_to_issue.yml
├── .gitignore
├── .pre-commit-config.yaml
├── .vscode
│   └── extensions.json
├── CHANGELOG.md
├── CONTRIBUTING.md
├── docs
│   ├── build
│   │   └── html
│   │       └── .nojekyll
│   ├── make.bat
│   ├── Makefile
│   └── source
│       ├── conf.py
│       ├── index.rst
│       ├── _static
│       └── _templates
├── LICENSE
├── MANIFEST.in
├── pyproject.toml
├── README.md
├── scripts
│   ├── export_requirements.sh
│   └── release.sh
├── source
│   └── {{ cookiecutter.__project_name_underscored }}
│       ├── computation
│       │   └── __init__.py
│       ├── config
│       │   ├── constants.py
│       │   └── __init__.py
│       ├── integrations
│       │   └── __init__.py
│       ├── interface
│       │   ├── command_line.py
│       │   └── __init__.py
│       ├── logs
│       │   ├── setup_logging.py
│       │   └── __init__.py
│       ├── main.py
│       ├── py.typed
│       ├── utilities
│       │   └── __init__.py
│       └── __init__.py
├── tests
│   ├── test_main.py
│   └── __init__.py
└── tox.ini


**ai**: Creating a Lua library for CC: Tweaked is an exciting project! Given your experience with Python, you can adapt some of the best practices from your Python project structure to Lua. Here's a suggested project structure for your Lua library, along with a clever name idea:

### Suggested Project Structure

```
{{ project_name_dashed }}
├── .gitignore
├── LICENSE
├── README.md
├── CHANGELOG.md
├── CONTRIBUTING.md
├── docs
│   └── index.md
├── src
│   ├── cli.lua                # Command Line Interface module
│   ├── logger.lua             # Logging module
│   ├── main.lua               # Main entry point
│   └── utils.lua              # Utility functions
├── tests
│   ├── test_logger.lua        # Tests for the logger module
│   ├── test_cli.lua           # Tests for the CLI module
│   └── test_utils.lua         # Tests for utility functions
└── .github
    └── workflows
        └── ci.yml             # Continuous Integration workflow
```

### Explanation of the Structure

- **.gitignore**: Specify files and directories to ignore in version control.
- **LICENSE**: Include the license for your project.
- **README.md**: Provide an overview of your library, installation instructions, and usage examples.
- **CHANGELOG.md**: Document changes and updates to your library.
- **CONTRIBUTING.md**: Guidelines for contributing to your project (you can adapt your existing Python version).
- **docs/**: Documentation files for your library.
- **src/**: Contains the main source code for your library.
  - **cli.lua**: Module for handling command-line interface functionality.
  - **logger.lua**: Module for logging functionality.
  - **main.lua**: The main entry point for your library.
  - **utils.lua**: Utility functions that can be used across your library.
- **tests/**: Contains test files for your library modules.
- **.github/workflows/**: Contains CI configuration files for automated testing and deployment.

### Name Ideas

Here are a few clever name ideas for your library, inspired by your name "Will" and your brother's "Lexicon":

1. **Willow**: A play on your name, suggesting flexibility and growth, much like a willow tree.
2. **Bilbo's Toolbox**: A nod to your nickname, suggesting a collection of useful tools for coding.
3. **Willy's Log**: A fun name that combines your name with the logging functionality.
4. **Will-o'-the-Wisp**: A whimsical name that evokes the idea of guiding light, fitting for a library that helps with logging and CLI.
5. **WitCLI**: A combination of "Wit" (for cleverness) and "CLI," emphasizing the command-line aspect of your library.

Feel free to mix and match or modify these suggestions to find a name that resonates with you! If you have any other questions or need further assistance, just let me know!

**user**: What should my repo description be for Willow?

**ai**: For your repository description of **Willow**, you want to convey the essence of your library while keeping it concise and informative. Here’s a suggestion:

**"Willow: A flexible Lua library for CC: Tweaked, providing robust logging and a user-friendly command line interface."**

This description highlights the key features of your library (logging and CLI) and emphasizes its flexibility, which aligns with the name "Willow." You can adjust it based on your preferences or any additional features you plan to include!

**user**: Can you modify my Python readme template for this project?


# {{ cookiecutter.project_name }}

[![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/{{ cookiecutter.author_username }}/{{ cookiecutter.__project_name_dashed }}?label=version)](https://github.com/{{ cookiecutter.author_username }}/{{ cookiecutter.__project_name_dashed }})
[![Lines Of Code](https://tokei.rs/b1/github/{{ cookiecutter.author_username }}/{{ cookiecutter.__project_name_dashed }}?category=code)](https://github.com/{{ cookiecutter.author_username }}/{{ cookiecutter.__project_name_dashed }})
[![Continuous Integration (CI) Tests](https://img.shields.io/github/actions/workflow/status/{{ cookiecutter.author_username }}/{{ cookiecutter.__project_name_dashed }}/continuous_integration.yml?label=tests)](https://github.com/{{ cookiecutter.author_username }}/{{ cookiecutter.__project_name_dashed }})
[![GitHub last commit](https://img.shields.io/github/last-commit/{{ cookiecutter.author_username }}/{{ cookiecutter.__project_name_dashed }})](https://github.com/{{ cookiecutter.author_username }}/{{ cookiecutter.__project_name_dashed }})

{{ cookiecutter.project_short_description }}

- [{{ cookiecutter.project_name }}](#{{ cookiecutter.project_name }})
    - [Features](#features)
    - [Installation](#installation)
    - [Usage](#usage)
    - [Documentation](#documentation)
    - [Contributing](#contributing)
    - [License](#license)

## Features

- [x] Installable via pip
- [x] Command-line interface
{% if cookiecutter.gui_required == 'true' %}
- [x] Graphical interface
{% endif %}
- [x] Interactive documentation
- [ ] Some new planned feature

## Installation

To install {{ cookiecutter.project_name }}, simply run:

```bash
pip install {{ cookiecutter.__project_name_dashed }}
```

## Usage

After installation, you can use {{ cookiecutter.project_name }} by running:

```bash
$ python3 -m {{ cookiecutter.__project_name_dashed}}
# or
$ {{ cookiecutter.__project_name_dashed}}
```

## Documentation
For more information, you can find the documentation within the [docs](./docs/index.html) directory or on the project's [GitHub Pages](https://{{ cookiecutter.author_username }}.github.io/{{ cookiecutter.__project_name_dashed }}/).

## Contributing

Contributions are welcome! Please refer to our [CONTRIBUTING.md](./CONTRIBUTING.md) for more information.

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.

**ai**: Here's a modified version of your Python README template tailored for your **Willow** Lua library project:

```markdown
# Willow

[![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/{{ cookiecutter.author_username }}/{{ cookiecutter.__project_name_dashed }}?label=version)](https://github.com/{{ cookiecutter.author_username }}/{{ cookiecutter.__project_name_dashed }})
[![Lines Of Code](https://tokei.rs/b1/github/{{ cookiecutter.author_username }}/{{ cookiecutter.__project_name_dashed }}?category=code)](https://github.com/{{ cookiecutter.author_username }}/{{ cookiecutter.__project_name_dashed }})
[![Continuous Integration (CI) Tests](https://img.shields.io/github/actions/workflow/status/{{ cookiecutter.author_username }}/{{ cookiecutter.__project_name_dashed }}/continuous_integration.yml?label=tests)](https://github.com/{{ cookiecutter.author_username }}/{{ cookiecutter.__project_name_dashed }})
[![GitHub last commit](https://img.shields.io/github/last-commit/{{ cookiecutter.author_username }}/{{ cookiecutter.__project_name_dashed }})](https://github.com/{{ cookiecutter.author_username }}/{{ cookiecutter.__project_name_dashed }})

A flexible Lua library for CC: Tweaked, providing robust logging and a user-friendly command line interface.

- [Willow](#willow)
    - [Features](#features)
    - [Installation](#installation)
    - [Usage](#usage)
    - [Documentation](#documentation)
    - [Contributing](#contributing)
    - [License](#license)

## Features

- [x] Installable via LuaRocks
- [x] Command-line interface
- [x] Robust logging functionality
- [x] Interactive documentation
- [ ] Additional planned features

## Installation

To install Willow, simply run:

```bash
luarocks install {{ cookiecutter.__project_name_dashed }}
```

## Usage

After installation, you can use Willow by running:

```bash
$ lua {{ cookiecutter.__project_name_dashed }}/main.lua
# or
$ {{ cookiecutter.__project_name_dashed }}
```

## Documentation

For more information, you can find the documentation within the [docs](./docs/index.md) directory or on the project's [GitHub Pages](https://{{ cookiecutter.author_username }}.github.io/{{ cookiecutter.__project_name_dashed }}/).

## Contributing

Contributions are welcome! Please refer to our [CONTRIBUTING.md](./CONTRIBUTING.md) for more information.

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.
```

### Key Modifications:
- Changed the project name to **Willow**.
- Updated the description to reflect the features of your Lua library.
- Adjusted the installation instructions to use **LuaRocks** instead of **pip**.
- Updated the usage section to reflect Lua command execution.
- Made minor adjustments to the features list to align with your library's functionality.

Feel free to customize any part of this template further to better fit your project's specifics!

**user**: You can fill in the cookiecutter bits, too. My username is unkokaeru and the project name is willow

**ai**: Sure! Here’s the modified README with the cookiecutter bits filled in for your project **Willow**:

```markdown
# Willow

[![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/unkokaeru/willow?label=version)](https://github.com/unkokaeru/willow)
[![Lines Of Code](https://tokei.rs/b1/github/unkokaeru/willow?category=code)](https://github.com/unkokaeru/willow)
[![Continuous Integration (CI) Tests](https://img.shields.io/github/actions/workflow/status/unkokaeru/willow/continuous_integration.yml?label=tests)](https://github.com/unkokaeru/willow)
[![GitHub last commit](https://img.shields.io/github/last-commit/unkokaeru/willow)](https://github.com/unkokaeru/willow)

A flexible Lua library for CC: Tweaked, providing robust logging and a user-friendly command line interface.

- [Willow](#willow)
    - [Features](#features)
    - [Installation](#installation)
    - [Usage](#usage)
    - [Documentation](#documentation)
    - [Contributing](#contributing)
    - [License](#license)

## Features

- [x] Installable via LuaRocks
- [x] Command-line interface
- [x] Robust logging functionality
- [x] Interactive documentation
- [ ] Additional planned features

## Installation

To install Willow, simply run:

```bash
luarocks install willow
```

## Usage

After installation, you can use Willow by running:

```bash
$ lua willow/main.lua
# or
$ willow
```

## Documentation

For more information, you can find the documentation within the [docs](./docs/index.md) directory or on the project's [GitHub Pages](https://unkokaeru.github.io/willow/).

## Contributing

Contributions are welcome! Please refer to our [CONTRIBUTING.md](./CONTRIBUTING.md) for more information.

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.
```

### Key Changes:
- Replaced `{{ cookiecutter.author_username }}` with `unkokaeru`.
- Replaced `{{ cookiecutter.__project_name_dashed }}` with `willow`.
- Updated the installation command to use `luarocks install willow`.
- Adjusted the usage command to reflect the correct path for the main Lua file.

Feel free to make any additional adjustments as needed!

**user**: Can you do the same for my CONTRIBUTING file?

**ai**: Absolutely! Here’s your **CONTRIBUTING.md** file filled in for your project **Willow**:

```markdown
# Contributing to Willow

First off, thanks for taking the time to contribute! ❤️

All types of contributions are encouraged and valued. See the [Table of Contents](#table-of-contents) for different ways to help and details about how this project handles them. Please make sure to read the relevant section before making your contribution. It will make it a lot easier for us maintainers and smooth out the experience for all involved. The community looks forward to your contributions. 🎉

> And if you like the project, but just don't have time to contribute, that's fine. There are other easy ways to support the project and show your appreciation, which we would also be very happy about:
> - Star the project
> - Share with your following
> - Refer this project in your project's readme
> - Mention the project at local meetups and tell your friends/colleagues

## Table of Contents

- [I Have a Question](#i-have-a-question)
- [I Want To Contribute](#i-want-to-contribute)
- [Reporting Bugs](#reporting-bugs)
- [Suggesting Enhancements](#suggesting-enhancements)
- [Styleguides](#styleguides)
- [Best Practices](#best-practices)
- [Version Support](#version-support)
- [Commit Messages](#commit-messages)
- [Handling Dependencies](#handling-dependencies)
- [Documentation Strings](#documentation-strings)

## I Have a Question

> If you want to ask a question, we assume that you have read the available [Documentation](https://unkokaeru.github.io/willow/).

Before you ask a question, it is best to search for existing [Issues](https://github.com/unkokaeru/willow/issues) that might help you. In case you have found a suitable issue and still need clarification, you can write your question in this issue. It is also advisable to search the internet for answers first.

If you then still feel the need to ask a question and need clarification, we recommend the following:

- Open an [Issue](https://github.com/unkokaeru/willow/issues/new).
- Provide as much context as you can about what you're running into.
- Provide project and platform versions (Lua, CC: Tweaked, etc.), depending on what seems relevant.

We will then take care of the issue as soon as possible.

## I Want To Contribute

> ### Legal Notice
> When contributing to this project, you must agree that you have authored 100% of the content, that you have the necessary rights to the content and that the content you contribute may be provided under the project license.

### Reporting Bugs

#### Before Submitting a Bug Report

A good bug report shouldn't leave others needing to chase you up for more information. Therefore, we ask you to investigate carefully, collect information and describe the issue in detail in your report. Please complete the following steps in advance to help us fix any potential bug as fast as possible.

- Make sure that you are using the latest version.
- Determine if your bug is really a bug and not an error on your side (e.g., using incompatible environment components/versions). Make sure that you have read the [documentation](https://unkokaeru.github.io/willow/). If you are looking for support, you might want to check [this section](#i-have-a-question).
- To see if other users have experienced (and potentially already solved) the same issue you are having, check if there is not already a bug report existing for your bug or error in the [bug tracker](https://github.com/unkokaeru/willow/issues?q=label%3Abug).
- Also, make sure to search the internet (including forums and community discussions) to see if users outside of the GitHub community have discussed the issue.
- Collect information about the bug:
  - Stack trace (if applicable)
  - OS, Platform, and Version (Windows, Linux, macOS, etc.)
  - Version of Lua and CC: Tweaked
  - Possibly your input and the output
  - Can you reliably reproduce the issue? And can you also reproduce it with older versions?

#### How Do I Submit a Good Bug Report?

> You must never report security-related issues, vulnerabilities, or bugs including sensitive information to the issue tracker, or elsewhere in public. Instead, sensitive bugs must be sent by email to <your-email@example.com>.

We use GitHub issues to track bugs and errors. If you run into an issue with the project:

- Open an [Issue](https://github.com/unkokaeru/willow/issues/new). (Since we can't be sure at this point whether it is a bug or not, we ask you not to talk about a bug yet and not to label the issue.)
- Explain the behavior you would expect and the actual behavior.
- Please provide as much context as possible and describe the *reproduction steps* that someone else can follow to recreate the issue on their own. This usually includes your code. For good bug reports, you should isolate the problem and create a reduced test case.
- Provide the information you collected in the previous section.

Once it's filed:

- The project team will label the issue accordingly.
- A team member will try to reproduce the issue with your provided steps. If there are no reproduction steps or no obvious way to reproduce the issue, the team will ask you for those steps and mark the issue as `needs-repro`. Bugs with the `needs-repro` tag will not be addressed until they are reproduced.
- If the team is able to reproduce the issue, it will be marked `needs-fix`, as well as possibly other tags (such as `critical`), and the issue will be left to be implemented by someone.

### Suggesting Enhancements

This section guides you through submitting an enhancement suggestion for Willow, **including completely new features and minor improvements to existing functionality**. Following these guidelines will help maintainers and the community to understand your suggestion and find related suggestions.

#### Before Submitting an Enhancement

- Make sure that you are using the latest version.
- Read the [documentation](https://unkokaeru.github.io/willow/) carefully and find out if the functionality is already covered, maybe by an individual configuration.
- Perform a [search](https://github.com/unkokaeru/willow/issues) to see if the enhancement has already been suggested. If it has, add a comment to the existing issue instead of opening a new one.
- Find out whether your idea fits with the scope and aims of the project. It's up to you to make a strong case to convince the project's developers of the merits of this feature. Keep in mind that we want features that will be useful to the majority of our users and not just a small subset. If you're just targeting a minority of users, consider writing an add-on/plugin library.

#### How Do I Submit a Good Enhancement Suggestion?

Enhancement suggestions are tracked as [GitHub issues](https://github.com/unkokaeru/willow/issues).

- Use a **clear and descriptive title** for the issue to identify the suggestion.
- Provide a **step-by-step description of the suggested enhancement** in as many details as possible.
- **Describe the current behavior** and **explain which behavior you expected to see instead** and why. At this point, you can also tell which alternatives do not work for you.
- **Explain why this enhancement would be useful** to most Willow users. You may also want to point out the other projects that solved it better and which could serve as inspiration.

### Making a Direct Contribution

Contributing directly to the codebase is a fantastic way to engage with the project and help improve it.

Before starting, you'll need [git](https://git-scm.com/) and [Lua](https://www.lua.org/). Then you can clone the repository and install the development dependencies like so:

```bash
$ git clone https://github.com/unkokaeru/willow
$ cd willow
```

Run tests like this (if applicable):

```bash
$ lua test/test_logger.lua  # Example test command
```

#### Best Practices

1. **Follow the Code Style**: Ensure that your code adheres to the project's coding standards. This includes using descriptive variable, function, and module names, and avoiding shorthand. All code should be well-typed and easy to read without the need for extensive comments.

2. **Use Semantic Versioning**: When making changes, be mindful of the versioning scheme. Increment the version number appropriately based on the nature of your changes (major, minor, or patch).

3. **Avoid Magic Numbers and Strings**: All constants should be defined in a dedicated configuration file or similar structure. This makes the code more maintainable and understandable.

4. **Implement Logging**: Include logging statements throughout your code to facilitate debugging. Use appropriate logging levels (e.g., `logger.debug`, `logger.info`, `logger.warning`, etc.) to capture relevant information about the execution flow and state.

5. **Write Tests**: Ensure that your contributions are covered by tests. This helps maintain the integrity of the codebase and prevents regressions. Follow the existing testing framework and conventions used in the project.

6. **Document Your Code**: Use Lua-style comments for all public functions and modules. Include sections for parameters, return values, examples, and notes where applicable. This enhances the usability of your code and helps other contributors understand your work.

7. **Review Your Changes**: Before submitting your contribution, review your code for any potential issues, such as unused imports, formatting inconsistencies, or logical errors. Run the tests to ensure everything passes.

8. **Engage with the Community**: If you have questions or need clarification while working on your contribution, feel free to reach out through the appropriate channels.

#### Version Support

Based on community standards, all minor versions of Lua released 42 months prior, and at minimum the two latest minor versions are supported.

#### Commit Messages

When committing your changes, please adhere to a clear commit message format. This structure enhances the readability of the commit history. Normally, this includes a body and an optional footer, as well as an optional scope within the header, but for simplicity, we just use the header section.

**Note**: This isn't standard, but to signify a breaking change (e.g., one that will update the version from 0.x.x to 1.0.0), you can add an exclamation mark after the type. For example,

```
feat!: breaking feature
```

##### Commit Message Header

The header is mandatory and must follow this format:

```
<type>: <short summary>
```

- **type**: Must be one of the following:
  - **build**: Changes that affect the build system or external dependencies.
  - **ci**: Changes to CI configuration files and scripts.
  - **docs**: Documentation only changes.
  - **feat**: A new feature.
  - **fix**: A bug fix.
  - **perf**: A code change that improves performance.
  - **refactor**: A code change that neither fixes a bug nor adds a feature.
  - **test**: Adding missing tests or correcting existing tests.
  - **chore**: Automatic changes, like version bumping and linting.

- **short summary**: A concise description of the change in present tense. Do not capitalize the first letter and do not end with a period.

Example header:
```
feat: add logging functionality to the main module
```

### Handling Dependencies

Before adding or removing any dependencies, please discuss your changes with the maintainers to ensure they align with the project's goals.

To add a new dependency, you can simply include it in your code and document it in the README or relevant documentation.

By adhering to these best practices, you will help maintain the quality and consistency of the project, making it easier for everyone to collaborate effectively. Thank you for your contributions! 🎉

## Attribution
This guide is based on community standards and best practices for open-source contributions.
```

### Key Changes:
- Replaced `{{ cookiecutter.author_username }}` with `unkokaeru`.
- Replaced `{{ cookiecutter.__project_name_dashed }}` with `willow`.
- Updated references to the documentation and issue tracker to point to your GitHub repository.
- Adjusted the language to be more relevant to a Lua project.

Feel free to modify any sections further to better fit your project's needs!

**user**: Can you actually modify it based on the [[lua style guide]]? (for bits like the best practices section). Also, this is my README:

# Willow

[![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/unkokaeru/willow?label=version)](https://github.com/unkokaeru/willow)
[![Lines Of Code](https://tokei.rs/b1/github/unkokaeru/willow?category=code)](https://github.com/unkokaeru/willow)
[![Continuous Integration (CI) Tests](https://img.shields.io/github/actions/workflow/status/unkokaeru/willow/continuous_integration.yml?label=tests)](https://github.com/unkokaeru/willow)
[![GitHub last commit](https://img.shields.io/github/last-commit/unkokaeru/willow)](https://github.com/unkokaeru/willow)

A flexible Lua library for CC: Tweaked, providing robust logging and a user-friendly command line interface.

- [Willow](#willow)
    - [Features](#features)
    - [Installation](#installation)
    - [Usage](#usage)
    - [Documentation](#documentation)
    - [Contributing](#contributing)
    - [License](#license)

## Features

- [ ] Unknown features, currently in development.

## Installation

Unknown installation, currently in development.

## Usage

Unknown usage, currently in development.

## Documentation

For more information, you can find the documentation within the [docs](./docs/index.md) directory or on the project's [GitHub Pages](https://unkokaeru.github.io/willow/).

## Contributing

Contributions are welcome! Please refer to our [CONTRIBUTING.md](./CONTRIBUTING.md) for more information.

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details. 

**ai**: Here’s your **CONTRIBUTING.md** file modified to align with the Lua style guide you provided, along with the necessary adjustments for your project **Willow**:

```markdown
# Contributing to Willow

First off, thanks for taking the time to contribute! ❤️

All types of contributions are encouraged and valued. See the [Table of Contents](#table-of-contents) for different ways to help and details about how this project handles them. Please make sure to read the relevant section before making your contribution. It will make it a lot easier for us maintainers and smooth out the experience for all involved. The community looks forward to your contributions. 🎉

> And if you like the project, but just don't have time to contribute, that's fine. There are other easy ways to support the project and show your appreciation, which we would also be very happy about:
> - Star the project
> - Share with your following
> - Refer this project in your project's readme
> - Mention the project at local meetups and tell your friends/colleagues

## Table of Contents

- [I Have a Question](#i-have-a-question)
- [I Want To Contribute](#i-want-to-contribute)
- [Reporting Bugs](#reporting-bugs)
- [Suggesting Enhancements](#suggesting-enhancements)
- [Styleguides](#styleguides)
- [Best Practices](#best-practices)
- [Version Support](#version-support)
- [Commit Messages](#commit-messages)
- [Documentation Strings](#documentation-strings)

## I Have a Question

> If you want to ask a question, we assume that you have read the available [Documentation](https://unkokaeru.github.io/willow/).

Before you ask a question, it is best to search for existing [Issues](https://github.com/unkokaeru/willow/issues) that might help you. In case you have found a suitable issue and still need clarification, you can write your question in this issue. It is also advisable to search the internet for answers first.

If you then still feel the need to ask a question and need clarification, we recommend the following:

- Open an [Issue](https://github.com/unkokaeru/willow/issues/new).
- Provide as much context as you can about what you're running into.
- Provide project and platform versions (Lua, CC: Tweaked, etc.), depending on what seems relevant.

We will then take care of the issue as soon as possible.

## I Want To Contribute

> ### Legal Notice
> When contributing to this project, you must agree that you have authored 100% of the content, that you have the necessary rights to the content and that the content you contribute may be provided under the project license.

### Reporting Bugs

#### Before Submitting a Bug Report

A good bug report shouldn't leave others needing to chase you up for more information. Therefore, we ask you to investigate carefully, collect information and describe the issue in detail in your report. Please complete the following steps in advance to help us fix any potential bug as fast as possible.

- Make sure that you are using the latest version.
- Determine if your bug is really a bug and not an error on your side (e.g., using incompatible environment components/versions). Make sure that you have read the [documentation](https://unkokaeru.github.io/willow/). If you are looking for support, you might want to check [this section](#i-have-a-question).
- To see if other users have experienced (and potentially already solved) the same issue you are having, check if there is not already a bug report existing for your bug or error in the [bug tracker](https://github.com/unkokaeru/willow/issues?q=label%3Abug).
- Also, make sure to search the internet (including forums and community discussions) to see if users outside of the GitHub community have discussed the issue.
- Collect information about the bug:
  - Stack trace (if applicable)
  - OS, Platform, and Version (Windows, Linux, macOS, etc.)
  - Version of Lua and CC: Tweaked
  - Possibly your input and the output
  - Can you reliably reproduce the issue? And can you also reproduce it with older versions?

#### How Do I Submit a Good Bug Report?

> You must never report security-related issues, vulnerabilities, or bugs including sensitive information to the issue tracker, or elsewhere in public. Instead, sensitive bugs must be sent by email to <your-email@example.com>.

We use GitHub issues to track bugs and errors. If you run into an issue with the project:

- Open an [Issue](https://github.com/unkokaeru/willow/issues/new). (Since we can't be sure at this point whether it is a bug or not, we ask you not to talk about a bug yet and not to label the issue.)
- Explain the behavior you would expect and the actual behavior.
- Please provide as much context as possible and describe the *reproduction steps* that someone else can follow to recreate the issue on their own. This usually includes your code. For good bug reports, you should isolate the problem and create a reduced test case.
- Provide the information you collected in the previous section.

Once it's filed:

- The project team will label the issue accordingly.
- A team member will try to reproduce the issue with your provided steps. If there are no reproduction steps or no obvious way to reproduce the issue, the team will ask you for those steps and mark the issue as `needs-repro`. Bugs with the `needs-repro` tag will not be addressed until they are reproduced.
- If the team is able to reproduce the issue, it will be marked `needs-fix`, as well as possibly other tags (such as `critical`), and the issue will be left to be implemented by someone.

### Suggesting Enhancements

This section guides you through submitting an enhancement suggestion for Willow, **including completely new features and minor improvements to existing functionality**. Following these guidelines will help maintainers and the community to understand your suggestion and find related suggestions.

#### Before Submitting an Enhancement

- Make sure that you are using the latest version.
- Read the [documentation](https://unkokaeru.github.io/willow/) carefully and find out if the functionality is already covered, maybe by an individual configuration.
- Perform a [search](https://github.com/unkokaeru/willow/issues) to see if the enhancement has already been suggested. If it has, add a comment to the existing issue instead of opening a new one.
- Find out whether your idea fits with the scope and aims of the project. It's up to you to make a strong case to convince the project's developers of the merits of this feature. Keep in mind that we want features that will be useful to the majority of our users and not just a small subset. If you're just targeting a minority of users, consider writing an add-on/plugin library.

#### How Do I Submit a Good Enhancement Suggestion?

Enhancement suggestions are tracked as [GitHub issues](https://github.com/unkokaeru/willow/issues).

- Use a **clear and descriptive title** for the issue to identify the suggestion.
- Provide a **step-by-step description of the suggested enhancement** in as many details as possible.
- **Describe the current behavior** and **explain which behavior you expected to see instead** and why. At this point, you can also tell which alternatives do not work for you.
- **Explain why this enhancement would be useful** to most Willow users. You may also want to point out the other projects that solved it better and which could serve as inspiration.

### Making a Direct Contribution

Contributing directly to the codebase is a fantastic way to engage with the project and help improve it.

Before starting, you'll need [git](https://git-scm.com/) and [Lua](https://www.lua.org/). Then you can clone the repository and install the development dependencies like so:

```bash
$ git clone https://github.com/unkokaeru/willow
$ cd willow
```

Run tests like this (if applicable):

```bash
$ lua test/test_logger.lua  # Example test command
```

#### Best Practices

1. **Follow the Lua Style Guide**: Ensure that your code adheres to the [Lua Style Guide](https://github.com/luarocks/luarocks/blob/master/doc/lua-style-guide.md). This includes using 3 spaces for indentation, using `local` for variable declarations, and following naming conventions (e.g., `snake_case` for variables and functions).

2. **Document Your Code**: Use [LDoc](https://stevedonovan.github.io/ldoc/) to document function signatures. Specify typing information after each parameter or return value. Prefer LDoc comments over inline comments.

3. **Use Assertions**: In non-performance critical code, it can be useful to add type-checking assertions for function arguments. For example:
   ```lua
   function my_function(param)
      assert(type(param) == "string")
      -- function implementation
   end
   ```

4. **Write Tests**: Ensure that your contributions are covered by tests. This helps maintain the integrity of the codebase and prevents regressions. Follow the existing testing framework and conventions used in the project.

5. **Review Your Changes**: Before submitting your contribution, review your code for any potential issues, such as unused variables, formatting inconsistencies, or logical errors. Run the tests to ensure everything passes.

6. **Engage with the Community**: If you have questions or need clarification while working on your contribution, feel free to reach out through the appropriate channels.

#### Version Support

Based on community standards, all minor versions of Lua released 42 months prior, and at minimum the two latest minor versions are supported.

#### Commit Messages

When committing your changes, please adhere to a clear commit message format. This structure enhances the readability of the commit history. Normally, this includes a body and an optional footer, as well as an optional scope within the header, but for simplicity, we just use the header section.

**Note**: This isn't standard, but to signify a breaking change (e.g., one that will update the version from 0.x.x to 1.0.0), you can add an exclamation mark after the type. For example,

```
feat!: breaking feature
```

##### Commit Message Header

The header is mandatory and must follow this format:

```
<type>: <short summary>
```

- **type**: Must be one of the following:
  - **build**: Changes that affect the build system or external dependencies.
  - **ci**: Changes to CI configuration files and scripts.
  - **docs**: Documentation only changes.
  - **feat**: A new feature.
  - **fix**: A bug fix.
  - **perf**: A code change that improves performance.
  - **refactor**: A code change that neither fixes a bug nor adds a feature.
  - **test**: Adding missing tests or correcting existing tests.
  - **chore**: Automatic changes, like version bumping and linting.

- **short summary**: A concise description of the change in present tense. Do not capitalize the first letter and do not end with a period.

Example header:
```
feat: add logging functionality to the main module
```

### Handling Dependencies

Before adding or removing any dependencies, please discuss your changes with the maintainers to ensure they align with the project's goals.

To add a new dependency, you can simply include it in your code and document it in the README or relevant documentation.

By adhering to these best practices, you will help maintain the quality and consistency of the project, making it easier for everyone to collaborate effectively. Thank you for your contributions! 🎉

## Attribution
This guide is based on community standards and best practices for open-source contributions.
```

### Key Changes:
- Incorporated specific recommendations from the Lua style guide into the best practices section.
- Emphasized the use of `local` for variable declarations and the importance of following the Lua style guide.
- Added examples for assertions and documentation practices.
- Adjusted the language to be more aligned with Lua conventions.

Feel free to modify any sections further to better fit your project's needs!

**user**: That's great! I'd now like to focus on the best practices section. Can you expand on it to explain things more verbosely, without referring to other documents? Just give me this new section, please!

**ai**: Certainly! Here’s an expanded **Best Practices** section for your **CONTRIBUTING.md** file, providing more detailed explanations without referring to other documents:

### Best Practices

1. **Follow the Lua Style Guide**: Adhering to a consistent coding style is crucial for maintaining readability and understanding within the codebase. Use 3 spaces for indentation to create a visually appealing structure that is easy to follow. Avoid mixing tabs and spaces, as this can lead to inconsistent formatting across different editors and environments. Consistent naming conventions, such as using `snake_case` for variables and functions, help convey the purpose of each element clearly.

2. **Document Your Code**: Clear documentation is essential for helping others understand your code. Use comments to explain the purpose of functions and their parameters. For each function, provide a brief description of what it does, the expected input types, and the return values. This practice not only aids other developers in using your code but also serves as a reminder for yourself when you revisit the code later. Aim for clarity and conciseness in your comments, focusing on what the function does rather than how it does it.

3. **Use Assertions**: Incorporating assertions into your code can help catch errors early in the development process. Assertions are statements that check whether a condition is true. If the condition is false, the program will raise an error. This is particularly useful for validating function arguments. For example, if a function expects a string as an argument, you can use an assertion to ensure that the provided argument meets this requirement. This practice enhances the robustness of your code by preventing unexpected behavior.

4. **Write Tests**: Testing is a critical part of the development process that ensures your code behaves as expected. Writing tests for your functions helps identify bugs and regressions before they reach production. Aim to cover various scenarios, including edge cases, to ensure comprehensive test coverage. Use a testing framework suitable for Lua to organize and run your tests efficiently. Regularly running tests during development can save time and effort in the long run by catching issues early.

5. **Review Your Changes**: Before submitting your contributions, take the time to review your code thoroughly. Look for potential issues such as unused variables, formatting inconsistencies, and logical errors. Ensure that your code adheres to the established style guide and that it is well-documented. Running tests after making changes is essential to verify that your modifications do not introduce new bugs. A careful review process helps maintain the quality of the codebase and fosters a culture of diligence among contributors.

6. **Engage with the Community**: Collaboration is key to the success of open-source projects. If you have questions or need clarification while working on your contribution, do not hesitate to reach out to the community. Engage with other contributors through issues, discussions, or chat platforms. Providing feedback and sharing knowledge can lead to better solutions and foster a supportive environment. Remember that everyone is here to learn and improve, so be open to feedback and willing to help others.

By following these best practices, you contribute to a high-quality codebase that is easy to understand, maintain, and extend. Your efforts will not only benefit your own work but also enhance the experience for all contributors and users of the project. Thank you for your commitment to excellence!

**user**: I meant just break down the best practices into more detailed subsections, like the style guide and documentation, so someone can read my document and know what to do exactly, and I can customise the styling/documenting however I'd like. Still keep everything as short and readable as possible, so it doesn't overwhelm the reader, but add as much detail on what practices to use as you can

**ai**: Certainly! Here’s a more detailed breakdown of the **Best Practices** section, organized into subsections for clarity while keeping it concise and readable:

### Best Practices

#### 1. Follow the Lua Style Guide
- **Indentation**: Use 3 spaces for indentation to maintain consistency and improve readability. Avoid mixing tabs and spaces.
- **Naming Conventions**: Use `snake_case` for variable and function names. This enhances clarity and aligns with Lua's standard library naming conventions.
- **Line Length**: Keep lines reasonably short. If a line becomes too long, consider breaking it into multiple lines for better readability.

#### 2. Document Your Code
- **Function Documentation**: At the beginning of each function, include a brief description of its purpose. Specify the expected input types and return values.
  ```lua
  --- Calculates the sum of two numbers.
  -- @param a number: The first number.
  -- @param b number: The second number.
  -- @return number: The sum of a and b.
  function add(a, b)
      return a + b
  end
  ```
- **Inline Comments**: Use inline comments sparingly to clarify complex logic within functions. Focus on explaining why something is done rather than what is being done.
- **TODO and FIXME Tags**: Use `TODO` to indicate features that need to be implemented and `FIXME` for known issues that require attention.

#### 3. Use Assertions
- **Input Validation**: Use assertions to validate function arguments. This helps catch errors early and ensures that functions receive the expected input types.
  ```lua
  function set_age(age)
      assert(type(age) == "number", "Age must be a number")
      -- function implementation
  end
  ```

#### 4. Write Tests
- **Test Coverage**: Write tests for all public functions to ensure they behave as expected. Cover various scenarios, including edge cases.
- **Testing Framework**: Use a testing framework compatible with Lua, such as Busted, to organize and run your tests efficiently.
- **Continuous Testing**: Run tests regularly during development to catch issues early and ensure that new changes do not break existing functionality.

#### 5. Review Your Changes
- **Code Review**: Before submitting your contributions, review your code for potential issues such as unused variables, formatting inconsistencies, and logical errors.
- **Adhere to Style**: Ensure that your code follows the established style guide and is well-documented.
- **Run Tests**: Always run tests after making changes to verify that your modifications do not introduce new bugs.

#### 6. Engage with the Community
- **Ask Questions**: If you have questions or need clarification, reach out to the community through issues or discussions. Collaboration fosters a supportive environment.
- **Provide Feedback**: Offer constructive feedback to others and be open to receiving feedback on your contributions. This helps everyone improve and learn from each other.

By following these detailed best practices, you will contribute to a high-quality codebase that is easy to understand, maintain, and extend. Your attention to detail will enhance the overall experience for all contributors and users of the project. Thank you for your commitment to excellence!

**user**: Nevermind, I'll stick with the original best practices section. Thanks!

**ai**: You're welcome! If you have any more questions or need further assistance with your project, feel free to ask. Good luck with **Willow**, and happy coding!

**user**: Okay now I want to focus on the GitHub Actions to use. I want to use this but for Lua:

name: "Run TODO to Issue"
on: [ "push" ]
jobs:
  build:
    runs-on: "ubuntu-latest"
    steps:
      - uses: "actions/checkout@v4"
      - name: "TODO to Issue"
        uses: "alstr/todo-to-issue-action@v5"
        with:
            AUTO_ASSIGN: "true"
            CLOSE_ISSUES: "true"
            INSERT_ISSUE_URLS: "true"
      - name: Set Git user
        run: |
          git config --global user.name "github-actions[bot]"
          git config --global user.email "github-actions[bot]@users.noreply.github.com"
      - name: Commit and Push Changes
        run: |
          git add .
          git commit -m "chore: added github issue links to todo comments"
          git push origin main

**ai**: To create a GitHub Actions workflow for your Lua project that runs a similar process to the one you've provided, you can adapt the YAML configuration to suit your needs. Below is a modified version of your workflow that is tailored for a Lua project, including the necessary steps to run tests and handle TODO comments.

### GitHub Actions Workflow for Lua

```yaml
name: "Run TODO to Issue"

on: 
  push:
    branches:
      - main  # Adjust this to your default branch if it's different

jobs:
  build:
    runs-on: "ubuntu-latest"

    steps:
      - name: "Checkout Code"
        uses: "actions/checkout@v4"

      - name: "Set Up Lua"
        uses: "luarocks/setup-luarocks@v1"
        with:
          lua-version: "5.4"  # Specify the Lua version you want to use

      - name: "Install Dependencies"
        run: |
          luarocks install --local --only-deps  # Install dependencies if you have a rockspec file

      - name: "Run TODO to Issue"
        uses: "alstr/todo-to-issue-action@v5"
        with:
          AUTO_ASSIGN: "true"
          CLOSE_ISSUES: "true"
          INSERT_ISSUE_URLS: "true"

      - name: "Set Git user"
        run: |
          git config --global user.name "github-actions[bot]"
          git config --global user.email "github-actions[bot]@users.noreply.github.com"

      - name: "Commit and Push Changes"
        run: |
          git add .
          git commit -m "chore: added GitHub issue links to TODO comments" || echo "No changes to commit"
          git push origin main
```

### Explanation of the Workflow Steps:

1. **Name and Trigger**: The workflow is named "Run TODO to Issue" and is triggered on pushes to the `main` branch.

2. **Checkout Code**: The `actions/checkout@v4` step checks out your repository code so that the workflow can access it.

3. **Set Up Lua**: The `luarocks/setup-luarocks@v1` action sets up Lua and LuaRocks. You can specify the version of Lua you want to use (e.g., `5.4`).

4. **Install Dependencies**: This step installs any dependencies specified in your LuaRocks rockspec file. Adjust this command if you have a different setup.

5. **Run TODO to Issue**: This step uses the `alstr/todo-to-issue-action@v5` action to process TODO comments in your code and create issues as specified.

6. **Set Git User**: This step configures the Git user for committing changes made by the workflow.

7. **Commit and Push Changes**: This step commits any changes made by the TODO to Issue action and pushes them back to the `main` branch. The `|| echo "No changes to commit"` part prevents the workflow from failing if there are no changes to commit.

### Customization
- Adjust the Lua version in the `Set Up Lua` step according to your project's requirements.
- If you have specific dependencies, you may want to modify the `Install Dependencies` step to suit your project's needs.

Feel free to modify this workflow further to fit your specific requirements! If you have any questions or need additional help, just let me know!

**user**: I just left it as I think it'll work anyway, right?

**ai**: Yes, your original workflow should work as intended for processing TODO comments and creating issues, provided that the `alstr/todo-to-issue-action` is compatible with your project setup. The steps you included for checking out the code, setting the Git user, and committing changes are all appropriate for the task.

Just ensure that:
- You have the necessary permissions set up for the GitHub Actions to push changes back to the repository.
- Your repository is configured correctly to handle the TODO comments in the way that the action expects.

If you encounter any issues or need to make adjustments later, you can always refine the workflow. But as it stands, it looks like a solid starting point! If you have any further questions or need assistance with anything else, feel free to ask!

**user**: What about this action? If things aren't easy to port from Python to Lua, then don't. For example, anything to do with poetry and that package creation isn't needed:

name: Continuous Integration (CI) Tests

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

concurrency:
  group: ${{ github.workflow }}-${{ github.event.pull_request.number || github.ref }}
  cancel-in-progress: true

permissions:
  contents: write

jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v4

    - name: Set up Python 3.12
      uses: actions/setup-python@v5
      with:
        python-version: '3.12'
        cache: 'pip'

    - name: Install dependencies
      run: |
        python -m pip install --upgrade pip
        python -m pip install tox

    - name: Cache tox environment
      uses: actions/cache@v4
      with:
        path: .tox
        key: 3.12-tox-${{ hashFiles('pyproject.toml') }}-${{ hashFiles('tox.ini') }}

    - name: Cache pre-commit environment
      uses: actions/cache@v4
      with:
        path: ~/.cache/pre-commit
        key: 3.12-pre-commit-${{ hashFiles('pyproject.toml') }}-${{ hashFiles('.pre-commit-config.yaml') }}

    - name: Lint and format with tox
      run: tox -e lint

    - name: If linting passes, upload any formatting changes
      uses: EndBug/add-and-commit@v9
      with:
        message: "@auto Formatting"

  test:
    needs: lint
    runs-on: ubuntu-latest
    strategy:
      fail-fast: false
      matrix:
        python-version: ['3.10', '3.11', '3.12']

    steps:
    - uses: actions/checkout@v4

    - name: Set up Python ${{ matrix.python-version }}
      uses: actions/setup-python@v5
      with:
        python-version: ${{ matrix.python-version }}
        cache: 'pip'

    - name: Install dependencies
      run: |
        python -m pip install --upgrade pip
        python -m pip install tox tox-gh-actions

    - name: Cache tox environment
      uses: actions/cache@v4
      with:
        path: .tox
        key: ${{ matrix.python-version }}-tox-${{ hashFiles('pyproject.toml') }}-${{ hashFiles('tox.ini') }}

    - name: Test with tox
      run: tox

  docs:
    if: github.event_name != 'pull_request'
    needs: test
    runs-on: ubuntu-latest
    concurrency: ci-${{ github.ref }}
    steps:
      - uses: actions/checkout@v4

      - name: Set up Python 3.12
        uses: actions/setup-python@v5
        with:
          python-version: '3.12'
          cache: 'pip'

      - name: Install dependencies
        run: |
          python -m pip install --upgrade pip
          python -m pip install tox

      - name: Cache tox environment
        uses: actions/cache@v4
        with:
          path: .tox
          key: 3.11-tox-${{ hashFiles('pyproject.toml') }}-${{ hashFiles('tox.ini') }}

      - name: Build documentation with tox
        run: tox -e docs

      - name: Add the the latest docs back to the repo if they've been updated
        uses: EndBug/add-and-commit@v9
        with:
          pull: '--rebase --autostash'
          message: "@auto Update docs"

      - name: Deploy new docs if they've been updated
        uses: JamesIves/github-pages-deploy-action@v4
        with:
          branch: docs
          folder: docs/build/html

  release:
    runs-on: ubuntu-latest
    needs: 
      - test  # Ensure tests pass before releasing
      - docs  # Ensure docs are built before releasing to avoid unsynced docs
    steps:
      - name: Checkout code
        uses: actions/checkout@v4
        with:
          fetch-depth: 0 # Fetch all history for changelog generation

      - name: Set up Python 3.12
        uses: actions/setup-python@v5
        with:
          python-version: '3.12'
          cache: 'pip'

      - name: Install dependencies
        run: |
          python -m pip install --upgrade pip
          python -m pip install tox
          python -m pip install poetry

      - name: Configure git
        run: |
          git config user.name "${{ github.actor }}"
          git config user.email "${{ github.actor }}@users.noreply.github.com"
          echo "https://${{ secrets.GITHUB_TOKEN }}@github.com" > ~/.git-credentials

      - name: Determine version type from commit message
        id: get_version
        run: |
          echo "Commit message: ${{ github.event.head_commit.message }}"
          if [[ "${{ github.event.head_commit.message }}" == feat\!* ]]; then
            echo "::set-output name=version_type::major"
            echo "::set-output name=release_proceed::true"
          elif [[ "${{ github.event.head_commit.message }}" == feat:* ]]; then
            echo "::set-output name=version_type::minor"
            echo "::set-output name=release_proceed::true"
          elif [[ "${{ github.event.head_commit.message }}" == fix:* \
              || "${{ github.event.head_commit.message }}" == refactor:* ]]; then
            echo "::set-output name=version_type::patch"
            echo "::set-output name=release_proceed::true"
          else
            echo "::set-output name=release_proceed::false"  # No release needed
          fi

      - name: Run release with tox
        if: steps.get_version.outputs.release_proceed == 'true'
        run: |
          chmod +x scripts/release.sh
          max_attempts=3
          attempt=0
          until [ $attempt -ge $max_attempts ]
          do
            tox -e release -- ${{ steps.get_version.outputs.version_type }} \
              ${{ secrets.PYPI_TOKEN }} && break
            exit_code=$?

            if [ $exit_code -eq 0 ]; then
              break  # Success
            elif [ $exit_code -eq 1 ]; then
              echo "Tox failed with exit code 1 (attempt $attempt). Attempting to commit changes..."
              git add .
              git commit -m "chore: commit changes for release"
            else
              echo "Tox failed with exit code $exit_code (attempt $attempt). Not retrying."
              break
            fi

            attempt=$(( attempt + 1 ))
            echo "Retrying in 10 seconds..."
            sleep 10
          done
          if [ $attempt -ge $max_attempts ]; then
            echo "Tox failed after $attempt attempts. Exiting..."
            exit 1
          fi

**ai**: To create a GitHub Actions workflow for your Lua project that focuses on continuous integration (CI) testing, you can simplify the original Python workflow by removing Python-specific steps and adapting it for Lua. Below is a modified version of your CI workflow that is tailored for a Lua project:

### GitHub Actions Workflow for Lua CI

```yaml
name: Continuous Integration (CI) Tests

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

concurrency:
  group: ${{ github.workflow }}-${{ github.event.pull_request.number || github.ref }}
  cancel-in-progress: true

permissions:
  contents: write

jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Code
        uses: actions/checkout@v4

      - name: Set Up Lua
        uses: luarocks/setup-luarocks@v1
        with:
          lua-version: "5.4"  # Specify the Lua version you want to use

      - name: Install Dependencies
        run: |
          luarocks install --local --only-deps  # Install dependencies if you have a rockspec file

      - name: Lint Code
        run: |
          # Add your linting command here, e.g., luacheck
          luacheck .  # Adjust this command based on your linting tool

  test:
    needs: lint
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Code
        uses: actions/checkout@v4

      - name: Set Up Lua
        uses: luarocks/setup-luarocks@v1
        with:
          lua-version: "5.4"  # Specify the Lua version you want to use

      - name: Install Dependencies
        run: |
          luarocks install --local --only-deps  # Install dependencies if you have a rockspec file

      - name: Run Tests
        run: |
          # Add your test command here, e.g., busted
          busted  # Adjust this command based on your testing framework

  release:
    runs-on: ubuntu-latest
    needs: 
      - test  # Ensure tests pass before releasing
    steps:
      - name: Checkout Code
        uses: actions/checkout@v4
        with:
          fetch-depth: 0  # Fetch all history for changelog generation

      - name: Set Up Lua
        uses: luarocks/setup-luarocks@v1
        with:
          lua-version: "5.4"  # Specify the Lua version you want to use

      - name: Install Dependencies
        run: |
          luarocks install --local --only-deps  # Install dependencies if you have a rockspec file

      - name: Configure Git
        run: |
          git config user.name "${{ github.actor }}"
          git config user.email "${{ github.actor }}@users.noreply.github.com"

      - name: Determine Version Type from Commit Message
        id: get_version
        run: |
          echo "Commit message: ${{ github.event.head_commit.message }}"
          if [[ "${{ github.event.head_commit.message }}" == feat\!* ]]; then
            echo "::set-output name=version_type::major"
            echo "::set-output name=release_proceed::true"
          elif [[ "${{ github.event.head_commit.message }}" == feat:* ]]; then
            echo "::set-output name=version_type::minor"
            echo "::set-output name=release_proceed::true"
          elif [[ "${{ github.event.head_commit.message }}" == fix:* ]]; then
            echo "::set-output name=version_type::patch"
            echo "::set-output name=release_proceed::true"
          else
            echo "::set-output name=release_proceed::false"  # No release needed
          fi

      - name: Run Release Script
        if: steps.get_version.outputs.release_proceed == 'true'
        run: |
          # Add your release command here, e.g., a custom script or command
          ./scripts/release.sh ${{ steps.get_version.outputs.version_type }}  # Adjust as needed
```

### Explanation of the Workflow Steps:

1. **Name and Trigger**: The workflow is named "Continuous Integration (CI) Tests" and is triggered on pushes and pull requests to the `main` branch.

2. **Concurrency**: This ensures that only one instance of the workflow runs at a time for a given branch or pull request.

3. **Permissions**: The workflow has write permissions for the repository contents.

4. **Lint Job**: 
   - Checks out the code.
   - Sets up Lua using LuaRocks.
   - Installs dependencies.
   - Runs a linting command (you can specify your preferred linting tool, such as `luacheck`).

5. **Test Job**: 
   - Depends on the lint job.
   - Checks out the code.
   - Sets up Lua.
   - Installs dependencies.
   - Runs tests using your chosen testing framework (e.g., `busted`).

6. **Release Job**: 
   - Depends on the test job.
   - Checks out the code.
   - Sets up Lua.
   - Installs dependencies.
   - Configures Git for committing changes.
   - Determines the version type based on the commit message.
   - Runs a release script if the conditions are met.

### Customization
- Adjust the Lua version in the `Set Up Lua` steps according to your project's requirements.
- Modify the linting and testing commands to match the tools you are using in your Lua project.
- Implement your release logic in the `Run Release Script` step as needed.

This workflow provides a solid foundation for continuous integration in your Lua project while keeping it simple and focused on the necessary tasks. If you have any further questions or need additional modifications, feel free to ask!

**user**: Can you write a rockspec file for willow?

**ai**: Certainly! Below is a sample rockspec file for your **Willow** Lua library. This file defines the metadata and dependencies for your project, allowing it to be packaged and installed using LuaRocks.

### Sample `willow-1.0.0.rockspec`

```lua
package = "willow"
version = "1.0.0-1"
source = {
   url = "https://github.com/unkokaeru/willow/archive/refs/tags/v1.0.0.tar.gz"
}

description = {
   summary = "A flexible Lua library for CC: Tweaked, providing robust logging and a user-friendly command line interface.",
   detailed = "Willow is designed to enhance the experience of programming in CC: Tweaked by providing utilities for logging and a command line interface.",
   homepage = "https://github.com/unkokaeru/willow",
   license = "MIT",
   maintainer = "Your Name <your.email@example.com>",  -- Replace with your name and email
}

dependencies = {
   "luarocks",
   "luacheck",  -- Example dependency for linting
   "busted",     -- Example dependency for testing
}

build = {
   type = "builtin",
   modules = {
      ["willow"] = "src/main.lua",  -- Adjust the path to your main module file
   },
}

-- Optional: Specify any additional files to include in the package
files = {
   "src/*.lua",
   "README.md",
   "LICENSE",
   "CHANGELOG.md",
   "CONTRIBUTING.md",
}

```

### Explanation of the Rockspec Fields:

- **package**: The name of your package (in this case, "willow").
- **version**: The version of your package. You can follow semantic versioning (e.g., "1.0.0-1").
- **source**: The source URL for your package. This should point to the tarball of your release on GitHub.
- **description**: Contains metadata about your package, including a summary, detailed description, homepage URL, license, and maintainer information.
- **dependencies**: A list of dependencies required by your package. You can add any Lua libraries that Willow depends on.
- **build**: Specifies how to build the package. The `modules` field maps the module name to its source file.
- **files**: (Optional) A list of additional files to include in the package, such as documentation and licenses.

### Customization
- Replace `"Your Name <your.email@example.com>"` with your actual name and email address.
- Adjust the `modules` path to point to the correct location of your main Lua file.
- Add or remove dependencies as necessary based on your project's requirements.

Once you have this rockspec file in your project root, you can use LuaRocks to build and install your package. If you have any further questions or need additional modifications, feel free to ask!

**user**: Is here a way to autogenerate the rockspec and handle it accordingly, so that I never have to worry about changing it between versions? I could handle this in my ci.yml or release.sh stuff etc. you get the vibes

**ai**: Yes, you can automate the generation and management of your rockspec file to ensure it stays up-to-date with each version of your project. This can be done by creating a script that generates the rockspec file dynamically based on your project's metadata and versioning. You can then integrate this script into your CI workflow or your release process.

### Steps to Automate Rockspec Generation

1. **Create a Script to Generate the Rockspec**: You can write a Lua or shell script that generates the rockspec file based on the current version and other project metadata.

2. **Integrate the Script into Your CI/CD Pipeline**: Call this script in your CI workflow or in your `release.sh` script to ensure the rockspec is generated before packaging or releasing.

### Example Script to Generate Rockspec

Here’s a simple example of a Lua script (`generate_rockspec.lua`) that generates a rockspec file:

```lua
local lfs = require("lfs")  -- LuaFileSystem for file operations
local version = "1.0.0"  -- Replace with your versioning logic

local rockspec_content = [[
package = "willow"
version = "]] .. version .. [[-1"
source = {
   url = "https://github.com/unkokaeru/willow/archive/refs/tags/v]] .. version .. [[.tar.gz"
}

description = {
   summary = "A flexible Lua library for CC: Tweaked, providing robust logging and a user-friendly command line interface.",
   detailed = "Willow is designed to enhance the experience of programming in CC: Tweaked by providing utilities for logging and a command line interface.",
   homepage = "https://github.com/unkokaeru/willow",
   license = "MIT",
   maintainer = "Your Name <your.email@example.com>",  -- Replace with your name and email
}

dependencies = {
   "luarocks",
   "luacheck",  -- Example dependency for linting
   "busted",     -- Example dependency for testing
}

build = {
   type = "builtin",
   modules = {
      ["willow"] = "src/main.lua",  -- Adjust the path to your main module file
   },
}

files = {
   "src/*.lua",
   "README.md",
   "LICENSE",
   "CHANGELOG.md",
   "CONTRIBUTING.md",
}
]]

-- Write the rockspec to a file
local rockspec_file = io.open("willow-" .. version .. ".rockspec", "w")
rockspec_file:write(rockspec_content)
rockspec_file:close()

print("Generated rockspec for version " .. version)
```

### Integrating the Script into Your CI/CD Pipeline

1. **Add the Script to Your Repository**: Place the `generate_rockspec.lua` script in your project directory.

2. **Modify Your CI Workflow**: Update your `ci.yml` or `release.sh` to call this script before packaging or releasing. Here’s how you might do it in your `ci.yml`:

```yaml
jobs:
  release:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Code
        uses: actions/checkout@v4

      - name: Set Up Lua
        uses: luarocks/setup-luarocks@v1
        with:
          lua-version: "5.4"

      - name: Generate Rockspec
        run: |
          lua generate_rockspec.lua  # Call the script to generate the rockspec

      - name: Build and Release
        run: |
          luarocks upload willow-*.rockspec  # Upload the generated rockspec
```

### Version Management

To manage versioning dynamically, you can:
- Use a versioning scheme based on Git tags. For example, you can extract the latest tag using a command like `git describe --tags --abbrev=0` in your script.
- Update the version variable in the script accordingly.

### Summary

By automating the generation of your rockspec file, you can ensure that it is always up-to-date with your project's version and metadata. This approach minimizes manual errors and saves time during the release process. If you have any further questions or need additional assistance, feel free to ask!

**user**: Okay this is the continuous_integration.yml I'm using:

name: Continuous Integration (CI) Tests

on:
    push:
        branches: [ main ]
    pull_request:
        branches: [ main ]

concurrency:
    group: ${{ github.workflow }}-${{ github.event.pull_request.number || github.ref }}
    cancel-in-progress: true

permissions:
    contents: write

jobs:
    lint:
        runs-on: ubuntu-latest
        steps:
            -   name: Checkout Code
                uses: actions/checkout@v4

            -   name: Set Up Lua
                uses: leafo/gh-actions-lua@v10

            -   name: Set Up LuaRocks
                uses: leafo/gh-actions-luarocks@v4

            -   name: Install Dependencies
                run: |
                    luarocks install --local --only-deps

            -   name: Lint Code
                run: |
                    luacheck .  # This might need adjusting

    test:
        needs: lint
        runs-on: ubuntu-latest
        steps:
            -   name: Checkout Code
                uses: actions/checkout@v4

            -   name: Set Up Lua
                uses: leafo/gh-actions-lua@v10

            -   name: Set Up LuaRocks
                uses: leafo/gh-actions-luarocks@v4

            -   name: Install Dependencies
                run: |
                    luarocks install --local --only-deps

            -   name: Run Tests
                uses: lunarmodules/busted@v2  # This might need adjusting

    release:
        runs-on: ubuntu-latest
        needs: 
            -   test
        steps:
            -   name: Checkout Code
                uses: actions/checkout@v4
                with:
                    fetch-depth: 0  # Fetch all history for changelog generation

            -   name: Set Up Lua
                uses: leafo/gh-actions-lua@v10

            -   name: Set Up LuaRocks
                uses: leafo/gh-actions-luarocks@v4

            -   name: Install Dependencies
                run: |
                    luarocks install --local --only-deps

            -   name: Configure Git
                run: |
                    git config user.name "${{ github.actor }}"
                    git config user.email "${{ github.actor }}@users.noreply.github.com"

            -   name: Determine Version Type from Commit Message
                id: get_version
                run: |
                    echo "Commit message: ${{ github.event.head_commit.message }}"
                    if [[ "${{ github.event.head_commit.message }}" == feat\!* ]]; then
                        echo "::set-output name=version_type::major"
                        echo "::set-output name=release_proceed::true"
                    elif [[ "${{ github.event.head_commit.message }}" == feat:* ]]; then
                        echo "::set-output name=version_type::minor"
                        echo "::set-output name=release_proceed::true"
                    elif [[ "${{ github.event.head_commit.message }}" == fix:* ]]; then
                        echo "::set-output name=version_type::patch"
                        echo "::set-output name=release_proceed::true"
                    else
                        echo "::set-output name=release_proceed::false"
                    fi

            -   name: Run Release Script
                if: steps.get_version.outputs.release_proceed == 'true'
                run: |
                    ./scripts/release.sh ${{ steps.get_version.outputs.version_type }}
                    # This might need adjusting



Can you adjust this release script (made for Python) to work with what you described and just work in general with Willow:

#!/bin/bash -e

# This script takes care of:
# 1. Updating the version numbers across the project
# 2. Update requirements and their files across the project
# 3. Generating a new changelog based on the commit history
# 4. Committing the changes to the git repository
# 5. Creating a new tag for the release
# 6. Building the package
# 7. Publishing the package to PyPI

# The script takes the type of version to release ('major', 'minor', or 'patch') as an argument.
# It is incompatible with pre-release versions for simplicity.

# This script requires both Poetry and git to be installed and configured on the system,
# including authentication for pushing to the remote repository and publishing to PyPI.

# Error codes:
# 1 - Uncommitted changes in the git repository
# 2 - Invalid version type
# 3 - Failed to update the lock file
# 4 - Failed to export requirements
# 5 - Failed to pull the latest changes from the remote repository

# Check if the git repo has any uncommitted changes
if [[ -n $(git status --porcelain) ]]; then
    echo "There are uncommitted changes in the git repository. Please commit or stash them before releasing."
    exit 1
fi

# Check if an argument was passed
if [ -z "$1" ]; then
    echo "No version type supplied. Please specify 'major', 'minor', or 'patch'."
    exit 2
fi

# Validate the argument as a version type
if [[ "$1" != "major" && "$1" != "minor" && "$1" != "patch" ]]; then
    echo "Invalid version type. Please specify 'major', 'minor', or 'patch'."
    exit 2
fi

# Get the current script's directory
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Update requirements and their files
echo "Updating requirements and their files..."
poetry update
source "$SCRIPT_DIR/export_requirements.sh"
echo "Requirements and their files updated successfully."

# Clear the current changelog - it gets regenerated fully on each release
echo '' > CHANGELOG.md

# Update the changelog
echo "Generating a new changelog..."
gitchangelog > CHANGELOG.md
git add CHANGELOG.md
git commit -m "chore: update changelog"
echo "Changelog generated successfully."

# Get the current version number
current_version=$(poetry version -s)

# Update the version number using poetry
poetry version "$1"

# Get the new version number
new_version=$(poetry version -s)

# Update __init__.py version numbers
echo "Updating __init__.py version numbers to $new_version..."
find source -type f -name "__init__.py" -exec sed -i "s/__version__ = \"$current_version\"/__version__ = \"$new_version\"/g" {} \;
echo "__init__.py version numbers updated successfully."

# Update the version number in the git repo
echo "Committing version bump to the git repository..."
git add .
git commit -m "chore: bump version from $current_version to $new_version"
echo "Version bump committed successfully."

# Pull the latest changes from the remote repository
git config pull.rebase true  # Ensure that the pull is a rebase
echo "Pulling the latest changes from the remote repository..."
if ! git pull origin main; then
    echo "Failed to pull the latest changes from the remote repository."
    exit 5
fi

# Create a new tag and push it to the remote repository
echo "Creating a new tag for the release..."
git tag -a "v$new_version" -m "Release $new_version"
echo "Pushing the new tag to the remote repository..."
git push --follow-tags
echo "Release $new_version created successfully."

# Check if the PYPI_TOKEN is provided
if [ -z "$2" ]; then
    echo "No PYPI_TOKEN provided. Skipping build and publish steps."
    echo "Please run the script again with the PYPI_TOKEN as an argument or,"
    echo "if ran in the CI/CD pipeline, ensure the secret PYPI_TOKEN is set."
else
    # Build the package for PyPI
    echo "Building the package..."
    poetry build
    echo "Package built successfully."

    # Publish the package to PyPI
    echo "Publishing the package to PyPI..."
    poetry config pypi-token.pypi "$2"  # Configure the token
    poetry publish
    echo "Package published to PyPI successfully."
fi

**ai**: To adapt your Python release script for the **Willow** Lua project, we need to remove Python-specific commands and replace them with Lua-related operations. The new script will focus on updating the version in the rockspec file, generating a changelog, committing changes, tagging the release, and optionally publishing the package to LuaRocks.

Here’s a modified version of your release script tailored for **Willow**:

### Updated `release.sh` Script for Willow

```bash
#!/bin/bash -e

# This script takes care of:
# 1. Updating the version number in the rockspec file.
# 2. Generating a new changelog based on the commit history.
# 3. Committing the changes to the git repository.
# 4. Creating a new tag for the release.
# 5. Building the package.
# 6. Publishing the package to LuaRocks.

# The script takes the type of version to release ('major', 'minor', or 'patch') as an argument.

# Error codes:
# 1 - Uncommitted changes in the git repository
# 2 - Invalid version type
# 3 - Failed to update the rockspec file
# 4 - Failed to generate changelog
# 5 - Failed to pull the latest changes from the remote repository

# Check if the git repo has any uncommitted changes
if [[ -n $(git status --porcelain) ]]; then
    echo "There are uncommitted changes in the git repository. Please commit or stash them before releasing."
    exit 1
fi

# Check if an argument was passed
if [ -z "$1" ]; then
    echo "No version type supplied. Please specify 'major', 'minor', or 'patch'."
    exit 2
fi

# Validate the argument as a version type
if [[ "$1" != "major" && "$1" != "minor" && "$1" != "patch" ]]; then
    echo "Invalid version type. Please specify 'major', 'minor', or 'patch'."
    exit 2
fi

# Get the current version from the rockspec file
current_version=$(grep 'version =' willow-*.rockspec | sed -E 's/.*"([^"]+)".*/\1/')

# Update the version number in the rockspec file
echo "Updating version number in the rockspec file..."
luarocks upload willow-*.rockspec --local --only-deps  # Adjust as needed for your versioning logic

# Generate a new changelog
echo "Generating a new changelog..."
gitchangelog > CHANGELOG.md
git add CHANGELOG.md
git commit -m "chore: update changelog"
echo "Changelog generated successfully."

# Update the version number in the rockspec file
echo "Updating the rockspec version number to the new version..."
new_version=$(luarocks version "$1" "$current_version")  # Adjust this logic to increment the version
sed -i "s/version = \"$current_version\"/version = \"$new_version\"/" willow-*.rockspec

# Commit the version bump to the git repository
echo "Committing version bump to the git repository..."
git add willow-*.rockspec
git commit -m "chore: bump version from $current_version to $new_version"
echo "Version bump committed successfully."

# Pull the latest changes from the remote repository
git config pull.rebase true  # Ensure that the pull is a rebase
echo "Pulling the latest changes from the remote repository..."
if ! git pull origin main; then
    echo "Failed to pull the latest changes from the remote repository."
    exit 5
fi

# Create a new tag and push it to the remote repository
echo "Creating a new tag for the release..."
git tag -a "v$new_version" -m "Release $new_version"
echo "Pushing the new tag to the remote repository..."
git push --follow-tags
echo "Release $new_version created successfully."

# Build the package for LuaRocks
echo "Building the package..."
luarocks build willow-*.rockspec  # Adjust as needed for your build process
echo "Package built successfully."

# Publish the package to LuaRocks
if [ -z "$2" ]; then
    echo "No LUA_TOKEN provided. Skipping publish step."
else
    echo "Publishing the package to LuaRocks..."
    luarocks upload willow-*.rockspec --token="$2"  # Use the provided token for authentication
    echo "Package published to LuaRocks successfully."
fi
```

### Key Changes and Explanations:

1. **Version Management**: The script now reads the current version from the rockspec file and updates it based on the specified version type (major, minor, or patch). You may need to implement a version incrementing logic that suits your needs.

2. **Changelog Generation**: The script generates a new changelog using `gitchangelog` and commits it.

3. **Rockspec Update**: The script updates the version in the rockspec file directly.

4. **Build and Publish**: The script builds the package using `luarocks build` and publishes it to LuaRocks if a token is provided.

5. **Error Handling**: The script includes error handling for various scenarios, ensuring that it exits gracefully with informative messages.

### Integration with CI/CD
You can call this script from your CI workflow as shown in the previous examples. Make sure to adjust the paths and commands as necessary to fit your project structure and requirements.

If you have any further questions or need additional modifications, feel free to ask!

**user**: Do I need to modify this at all now?

name: Continuous Integration (CI) Tests

on:
    push:
        branches: [ main ]
    pull_request:
        branches: [ main ]

concurrency:
    group: ${{ github.workflow }}-${{ github.event.pull_request.number || github.ref }}
    cancel-in-progress: true

permissions:
    contents: write

jobs:
    lint:
        runs-on: ubuntu-latest
        steps:
            -   name: Checkout Code
                uses: actions/checkout@v4

            -   name: Set Up Lua
                uses: leafo/gh-actions-lua@v10

            -   name: Set Up LuaRocks
                uses: leafo/gh-actions-luarocks@v4

            -   name: Install Dependencies
                run: |
                    luarocks install --local --only-deps

            -   name: Lint Code
                run: |
                    luacheck .  # This might need adjusting

    test:
        needs: lint
        runs-on: ubuntu-latest
        steps:
            -   name: Checkout Code
                uses: actions/checkout@v4

            -   name: Set Up Lua
                uses: leafo/gh-actions-lua@v10

            -   name: Set Up LuaRocks
                uses: leafo/gh-actions-luarocks@v4

            -   name: Install Dependencies
                run: |
                    luarocks install --local --only-deps

            -   name: Run Tests
                uses: lunarmodules/busted@v2  # This might need adjusting

    release:
        runs-on: ubuntu-latest
        needs: 
            -   test
        steps:
            -   name: Checkout Code
                uses: actions/checkout@v4
                with:
                    fetch-depth: 0  # Fetch all history for changelog generation

            -   name: Set Up Lua
                uses: leafo/gh-actions-lua@v10

            -   name: Set Up LuaRocks
                uses: leafo/gh-actions-luarocks@v4

            -   name: Install Dependencies
                run: |
                    luarocks install --local --only-deps

            -   name: Configure Git
                run: |
                    git config user.name "${{ github.actor }}"
                    git config user.email "${{ github.actor }}@users.noreply.github.com"

            -   name: Determine Version Type from Commit Message
                id: get_version
                run: |
                    echo "Commit message: ${{ github.event.head_commit.message }}"
                    if [[ "${{ github.event.head_commit.message }}" == feat\!* ]]; then
                        echo "::set-output name=version_type::major"
                        echo "::set-output name=release_proceed::true"
                    elif [[ "${{ github.event.head_commit.message }}" == feat:* ]]; then
                        echo "::set-output name=version_type::minor"
                        echo "::set-output name=release_proceed::true"
                    elif [[ "${{ github.event.head_commit.message }}" == fix:* ]]; then
                        echo "::set-output name=version_type::patch"
                        echo "::set-output name=release_proceed::true"
                    else
                        echo "::set-output name=release_proceed::false"
                    fi

            -   name: Run Release Script
                if: steps.get_version.outputs.release_proceed == 'true'
                run: |
                    ./scripts/release.sh ${{ steps.get_version.outputs.version_type }}
                    # This might need adjusting

**ai**: Your current CI workflow looks well-structured for a Lua project, but there are a few adjustments you might consider to ensure it aligns perfectly with the changes made in the `release.sh` script and to enhance its functionality. Here are some suggestions:

### Suggested Modifications

1. **Update the `Run Tests` Step**: Ensure that the testing framework you are using (e.g., Busted) is correctly set up. If you are using a specific command to run tests, make sure it is included.

2. **Versioning Logic**: If you want to automate the versioning process based on Git tags or other criteria, ensure that your `Determine Version Type from Commit Message` step accurately reflects your versioning strategy.

3. **Error Handling**: Consider adding error handling or logging to your steps to make it easier to debug issues if they arise.

4. **Publishing Logic**: If you want to publish to LuaRocks, ensure that the `LUA_TOKEN` is set in your GitHub Secrets and that your `release.sh` script is correctly configured to handle the token.

5. **Remove Unused Comments**: Clean up any comments that are no longer relevant or that you have already addressed in your script.

### Updated `ci.yml`

Here’s an updated version of your `ci.yml` with some minor adjustments:

```yaml
name: Continuous Integration (CI) Tests

on:
    push:
        branches: [ main ]
    pull_request:
        branches: [ main ]

concurrency:
    group: ${{ github.workflow }}-${{ github.event.pull_request.number || github.ref }}
    cancel-in-progress: true

permissions:
    contents: write

jobs:
    lint:
        runs-on: ubuntu-latest
        steps:
            - name: Checkout Code
              uses: actions/checkout@v4

            - name: Set Up Lua
              uses: leafo/gh-actions-lua@v10

            - name: Set Up LuaRocks
              uses: leafo/gh-actions-luarocks@v4

            - name: Install Dependencies
              run: |
                  luarocks install --local --only-deps

            - name: Lint Code
              run: |
                  luacheck .  # Ensure this is the correct command for your linting tool

    test:
        needs: lint
        runs-on: ubuntu-latest
        steps:
            - name: Checkout Code
              uses: actions/checkout@v4

            - name: Set Up Lua
              uses: leafo/gh-actions-lua@v10

            - name: Set Up LuaRocks
              uses: leafo/gh-actions-luarocks@v4

            - name: Install Dependencies
              run: |
                  luarocks install --local --only-deps

            - name: Run Tests
              run: |
                  busted  # Ensure this is the correct command for your testing framework

    release:
        runs-on: ubuntu-latest
        needs: 
            - test
        steps:
            - name: Checkout Code
              uses: actions/checkout@v4
              with:
                  fetch-depth: 0  # Fetch all history for changelog generation

            - name: Set Up Lua
              uses: leafo/gh-actions-lua@v10

            - name: Set Up LuaRocks
              uses: leafo/gh-actions-luarocks@v4

            - name: Install Dependencies
              run: |
                  luarocks install --local --only-deps

            - name: Configure Git
              run: |
                  git config user.name "${{ github.actor }}"
                  git config user.email "${{ github.actor }}@users.noreply.github.com"

            - name: Determine Version Type from Commit Message
              id: get_version
              run: |
                  echo "Commit message: ${{ github.event.head_commit.message }}"
                  if [[ "${{ github.event.head_commit.message }}" == feat\!* ]]; then
                      echo "::set-output name=version_type::major"
                      echo "::set-output name=release_proceed::true"
                  elif [[ "${{ github.event.head_commit.message }}" == feat:* ]]; then
                      echo "::set-output name=version_type::minor"
                      echo "::set-output name=release_proceed::true"
                  elif [[ "${{ github.event.head_commit.message }}" == fix:* ]]; then
                      echo "::set-output name=version_type::patch"
                      echo "::set-output name=release_proceed::true"
                  else
                      echo "::set-output name=release_proceed::false"
                  fi

            - name: Run Release Script
              if: steps.get_version.outputs.release_proceed == 'true'
              run: |
                  ./scripts/release.sh ${{ steps.get_version.outputs.version_type }}
```

### Key Adjustments:
- **Run Tests Step**: Ensure that the command to run tests is appropriate for your testing framework (e.g., `busted`).
- **Comments**: Removed comments that were marked as needing adjustments, as they may no longer be relevant.
- **Error Handling**: Consider adding error handling in your `release.sh` script to ensure it exits gracefully on failure.

### Conclusion
With these adjustments, your CI workflow should be well-suited for your Lua project. If you have any further questions or need additional modifications, feel free to ask!

**user**: Don't I need to get gitchangelog or anything for the release script?

**ai**: Yes, you're correct! If your release script uses `gitchangelog` to generate the changelog, you need to ensure that it is installed and available in your CI environment. You can add a step in your `release` job to install `gitchangelog` before you attempt to generate the changelog.

### Updated `ci.yml` with gitchangelog Installation

Here’s how you can modify the `release` job in your `ci.yml` to include the installation of `gitchangelog`:

```yaml
release:
    runs-on: ubuntu-latest
    needs: 
        - test
    steps:
        - name: Checkout Code
          uses: actions/checkout@v4
          with:
              fetch-depth: 0  # Fetch all history for changelog generation

        - name: Set Up Lua
          uses: leafo/gh-actions-lua@v10

        - name: Set Up LuaRocks
          uses: leafo/gh-actions-luarocks@v4

        - name: Install Dependencies
          run: |
              luarocks install --local --only-deps

        - name: Install gitchangelog
          run: |
              sudo apt-get update
              sudo apt-get install -y gitchangelog

        - name: Configure Git
          run: |
              git config user.name "${{ github.actor }}"
              git config user.email "${{ github.actor }}@users.noreply.github.com"

        - name: Determine Version Type from Commit Message
          id: get_version
          run: |
              echo "Commit message: ${{ github.event.head_commit.message }}"
              if [[ "${{ github.event.head_commit.message }}" == feat\!* ]]; then
                  echo "::set-output name=version_type::major"
                  echo "::set-output name=release_proceed::true"
              elif [[ "${{ github.event.head_commit.message }}" == feat:* ]]; then
                  echo "::set-output name=version_type::minor"
                  echo "::set-output name=release_proceed::true"
              elif [[ "${{ github.event.head_commit.message }}" == fix:* ]]; then
                  echo "::set-output name=version_type::patch"
                  echo "::set-output name=release_proceed::true"
              else
                  echo "::set-output name=release_proceed::false"
              fi

        - name: Run Release Script
          if: steps.get_version.outputs.release_proceed == 'true'
          run: |
              ./scripts/release.sh ${{ steps.get_version.outputs.version_type }}
```

### Key Additions:
- **Install gitchangelog**: A new step has been added to install `gitchangelog` using `apt-get`. This ensures that the tool is available when you run the release script.

### Note:
- The installation command assumes that the CI environment has `apt-get` available (which is typical for Ubuntu). If you are using a different base image or if `gitchangelog` is not available via `apt`, you may need to adjust the installation method accordingly.
- Ensure that your `release.sh` script correctly calls `gitchangelog` to generate the changelog.

With this addition, your CI workflow should be fully equipped to handle the release process, including changelog generation. If you have any further questions or need additional modifications, feel free to ask!

**user**: Is there anything I need to do with the release script?

#!/bin/bash -e

# This script takes care of:
# 1. Updating the version number in the rockspec file.
# 2. Generating a new changelog based on the commit history.
# 3. Committing the changes to the git repository.
# 4. Creating a new tag for the release.
# 5. Building the package.
# 6. Publishing the package to LuaRocks.

# The script takes the type of version to release ('major', 'minor', or 'patch') as an argument.

# Error codes:
# 1 - Uncommitted changes in the git repository
# 2 - Invalid version type
# 3 - Failed to update the rockspec file
# 4 - Failed to generate changelog
# 5 - Failed to pull the latest changes from the remote repository

# Check if the git repo has any uncommitted changes
if [[ -n $(git status --porcelain) ]]; then
    echo "There are uncommitted changes in the git repository. Please commit or stash them before releasing."
    exit 1
fi

# Check if an argument was passed
if [ -z "$1" ]; then
    echo "No version type supplied. Please specify 'major', 'minor', or 'patch'."
    exit 2
fi

# Validate the argument as a version type
if [[ "$1" != "major" && "$1" != "minor" && "$1" != "patch" ]]; then
    echo "Invalid version type. Please specify 'major', 'minor', or 'patch'."
    exit 2
fi

# Get the current version from the rockspec file
current_version=$(grep 'version =' willow-*.rockspec | sed -E 's/.*"([^"]+)".*/\1/')

# Update the version number in the rockspec file
echo "Updating version number in the rockspec file..."
luarocks upload willow-*.rockspec --local --only-deps

# Generate a new changelog
echo "Generating a new changelog..."
gitchangelog > CHANGELOG.md
git add CHANGELOG.md
git commit -m "chore: update changelog"
echo "Changelog generated successfully."

# Update the version number in the rockspec file
echo "Updating the rockspec version number to the new version..."
new_version=$(luarocks version "$1" "$current_version")
sed -i "s/version = \"$current_version\"/version = \"$new_version\"/" willow-*.rockspec

# Commit the version bump to the git repository
echo "Committing version bump to the git repository..."
git add willow-*.rockspec
git commit -m "chore: bump version from $current_version to $new_version"
echo "Version bump committed successfully."

# Pull the latest changes from the remote repository
git config pull.rebase true  # Ensure that the pull is a rebase
echo "Pulling the latest changes from the remote repository..."
if ! git pull origin main; then
    echo "Failed to pull the latest changes from the remote repository."
    exit 5
fi

# Create a new tag and push it to the remote repository
echo "Creating a new tag for the release..."
git tag -a "v$new_version" -m "Release $new_version"
echo "Pushing the new tag to the remote repository..."
git push --follow-tags
echo "Release $new_version created successfully."

# Build the package for LuaRocks
echo "Building the package..."
luarocks build willow-*.rockspec
echo "Package built successfully."

# Publish the package to LuaRocks
if [ -z "$2" ]; then
    echo "No LUA_TOKEN provided. Skipping publish step."
else
    echo "Publishing the package to LuaRocks..."
    luarocks upload willow-*.rockspec --token="$2"
    echo "Package published to LuaRocks successfully."

**ai**: Your release script is mostly well-structured for handling the release process for your **Willow** Lua project. However, there are a few adjustments and improvements you might consider to ensure it functions correctly and efficiently. Here are some suggestions:

### Suggested Modifications

1. **Update Version Logic**: The line that updates the version number in the rockspec file should be adjusted to ensure it correctly increments the version based on the specified type (major, minor, or patch). You might want to implement a version bumping function.

2. **Remove Unused Upload Command**: The line `luarocks upload willow-*.rockspec --local --only-deps` is not necessary for updating the version in the rockspec file. You should only upload the rockspec when you are ready to publish.

3. **Changelog Generation**: Ensure that `gitchangelog` is installed and available in your CI environment, as you already planned in your CI workflow.

4. **Error Handling**: You might want to add more specific error handling for each step to provide clearer feedback if something goes wrong.

5. **Token Handling**: Ensure that the token for publishing to LuaRocks is securely handled and passed correctly.

### Updated `release.sh` Script

Here’s an updated version of your release script with the suggested modifications:

```bash
#!/bin/bash -e

# This script takes care of:
# 1. Updating the version number in the rockspec file.
# 2. Generating a new changelog based on the commit history.
# 3. Committing the changes to the git repository.
# 4. Creating a new tag for the release.
# 5. Building the package.
# 6. Publishing the package to LuaRocks.

# The script takes the type of version to release ('major', 'minor', or 'patch') as an argument.

# Error codes:
# 1 - Uncommitted changes in the git repository
# 2 - Invalid version type
# 3 - Failed to update the rockspec file
# 4 - Failed to generate changelog
# 5 - Failed to pull the latest changes from the remote repository

# Check if the git repo has any uncommitted changes
if [[ -n $(git status --porcelain) ]]; then
    echo "There are uncommitted changes in the git repository. Please commit or stash them before releasing."
    exit 1
fi

# Check if an argument was passed
if [ -z "$1" ]; then
    echo "No version type supplied. Please specify 'major', 'minor', or 'patch'."
    exit 2
fi

# Validate the argument as a version type
if [[ "$1" != "major" && "$1" != "minor" && "$1" != "patch" ]]; then
    echo "Invalid version type. Please specify 'major', 'minor', or 'patch'."
    exit 2
fi

# Get the current version from the rockspec file
current_version=$(grep 'version =' willow-*.rockspec | sed -E 's/.*"([^"]+)".*/\1/')

# Generate a new changelog
echo "Generating a new changelog..."
gitchangelog > CHANGELOG.md
git add CHANGELOG.md
git commit -m "chore: update changelog"
echo "Changelog generated successfully."

# Update the version number in the rockspec file
echo "Updating the rockspec version number..."
new_version=$(luarocks version "$1" "$current_version")  # Implement version bumping logic
sed -i "s/version = \"$current_version\"/version = \"$new_version\"/" willow-*.rockspec

# Commit the version bump to the git repository
echo "Committing version bump to the git repository..."
git add willow-*.rockspec
git commit -m "chore: bump version from $current_version to $new_version"
echo "Version bump committed successfully."

# Pull the latest changes from the remote repository
git config pull.rebase true  # Ensure that the pull is a rebase
echo "Pulling the latest changes from the remote repository..."
if ! git pull origin main; then
    echo "Failed to pull the latest changes from the remote repository."
    exit 5
fi

# Create a new tag and push it to the remote repository
echo "Creating a new tag for the release..."
git tag -a "v$new_version" -m "Release $new_version"
echo "Pushing the new tag to the remote repository..."
git push --follow-tags
echo "Release $new_version created successfully."

# Build the package for LuaRocks
echo "Building the package..."
luarocks build willow-*.rockspec
echo "Package built successfully."

# Publish the package to LuaRocks
if [ -z "$2" ]; then
    echo "No LUA_TOKEN provided. Skipping publish step."
else
    echo "Publishing the package to LuaRocks..."
    luarocks upload willow-*.rockspec --token="$2"
    echo "Package published to LuaRocks successfully."
fi
```

### Key Adjustments:
- **Removed Unused Upload Command**: The line for uploading the rockspec during version update has been removed.
- **Version Bumping Logic**: Ensure that the `luarocks version` command correctly handles version bumping. You may need to implement a function to increment the version based on the specified type.
- **Changelog Generation**: The changelog generation step is retained, ensuring it runs before the version update.
- **Error Handling**: The script includes error handling for various steps, providing clear feedback if something goes wrong.

### Conclusion
With these adjustments, your release script should be well-suited for managing the release process for your **Willow** Lua project. If you have any further questions or need additional modifications, feel free to ask!

**user**: Can you implement the version bumping, then?

**ai**: Certainly! To implement version bumping in your release script, we can define a function that increments the version number based on the specified type (major, minor, or patch). This function will parse the current version, increment the appropriate part, and return the new version.

Here's how you can modify your `release.sh` script to include the version bumping logic:

### Updated `release.sh` Script with Version Bumping

```bash
#!/bin/bash -e

# This script takes care of:
# 1. Updating the version number in the rockspec file.
# 2. Generating a new changelog based on the commit history.
# 3. Committing the changes to the git repository.
# 4. Creating a new tag for the release.
# 5. Building the package.
# 6. Publishing the package to LuaRocks.

# The script takes the type of version to release ('major', 'minor', or 'patch') as an argument.

# Error codes:
# 1 - Uncommitted changes in the git repository
# 2 - Invalid version type
# 3 - Failed to update the rockspec file
# 4 - Failed to generate changelog
# 5 - Failed to pull the latest changes from the remote repository

# Function to bump the version number
bump_version() {
    local version="$1"
    local bump_type="$2"
    IFS='.' read -r major minor patch <<< "$version"

    case "$bump_type" in
        major)
            major=$((major + 1))
            minor=0
            patch=0
            ;;
        minor)
            minor=$((minor + 1))
            patch=0
            ;;
        patch)
            patch=$((patch + 1))
            ;;
        *)
            echo "Invalid bump type: $bump_type"
            exit 2
            ;;
    esac

    echo "$major.$minor.$patch"
}

# Check if the git repo has any uncommitted changes
if [[ -n $(git status --porcelain) ]]; then
    echo "There are uncommitted changes in the git repository. Please commit or stash them before releasing."
    exit 1
fi

# Check if an argument was passed
if [ -z "$1" ]; then
    echo "No version type supplied. Please specify 'major', 'minor', or 'patch'."
    exit 2
fi

# Validate the argument as a version type
if [[ "$1" != "major" && "$1" != "minor" && "$1" != "patch" ]]; then
    echo "Invalid version type. Please specify 'major', 'minor', or 'patch'."
    exit 2
fi

# Get the current version from the rockspec file
current_version=$(grep 'version =' willow-*.rockspec | sed -E 's/.*"([^"]+)".*/\1/')

# Generate a new changelog
echo "Generating a new changelog..."
gitchangelog > CHANGELOG.md
git add CHANGELOG.md
git commit -m "chore: update changelog"
echo "Changelog generated successfully."

# Update the version number in the rockspec file
echo "Updating the rockspec version number..."
new_version=$(bump_version "$current_version" "$1")  # Call the version bump function
sed -i "s/version = \"$current_version\"/version = \"$new_version\"/" willow-*.rockspec

# Commit the version bump to the git repository
echo "Committing version bump to the git repository..."
git add willow-*.rockspec
git commit -m "chore: bump version from $current_version to $new_version"
echo "Version bump committed successfully."

# Pull the latest changes from the remote repository
git config pull.rebase true  # Ensure that the pull is a rebase
echo "Pulling the latest changes from the remote repository..."
if ! git pull origin main; then
    echo "Failed to pull the latest changes from the remote repository."
    exit 5
fi

# Create a new tag and push it to the remote repository
echo "Creating a new tag for the release..."
git tag -a "v$new_version" -m "Release $new_version"
echo "Pushing the new tag to the remote repository..."
git push --follow-tags
echo "Release $new_version created successfully."

# Build the package for LuaRocks
echo "Building the package..."
luarocks build willow-*.rockspec
echo "Package built successfully."

# Publish the package to LuaRocks
if [ -z "$2" ]; then
    echo "No LUA_TOKEN provided. Skipping publish step."
else
    echo "Publishing the package to LuaRocks..."
    luarocks upload willow-*.rockspec --token="$2"
    echo "Package published to LuaRocks successfully."
fi
```

### Key Changes:
1. **Version Bumping Function**: The `bump_version` function takes the current version and the bump type as arguments. It splits the version into major, minor, and patch components, increments the appropriate one based on the specified type, and returns the new version.

2. **Version Update Logic**: The script now calls the `bump_version` function to calculate the new version before updating the rockspec file.

3. **Error Handling**: The function includes error handling for invalid bump types.

### Conclusion
With these modifications, your release script will automatically handle version bumping based on the specified type, making it easier to manage releases for your **Willow** Lua project. If you have any further questions or need additional modifications, feel free to ask!

**user**: Can you help me make it auto-build docs like in my original Python stuff, too? Or is that not possible with Lua code?

**ai**: Yes, you can definitely set up your Lua project to automatically build documentation, similar to how you would in a Python project. While Lua doesn't have a built-in documentation generator like Python's Sphinx, you can use tools like **LDoc** to generate documentation from your Lua code comments.

### Steps to Auto-Build Documentation

1. **Install LDoc**: Ensure that LDoc is installed in your CI environment. You can add a step in your CI workflow to install it using LuaRocks.

2. **Create Documentation**: Use LDoc to generate documentation from your Lua source files. You can specify the output directory for the generated documentation.

3. **Integrate into CI Workflow**: Add a job in your CI workflow to build the documentation after the tests pass.

### Example CI Workflow with Documentation Generation

Here’s how you can modify your `ci.yml` to include documentation generation:

```yaml
name: Continuous Integration (CI) Tests

on:
    push:
        branches: [ main ]
    pull_request:
        branches: [ main ]

concurrency:
    group: ${{ github.workflow }}-${{ github.event.pull_request.number || github.ref }}
    cancel-in-progress: true

permissions:
    contents: write

jobs:
    lint:
        runs-on: ubuntu-latest
        steps:
            - name: Checkout Code
              uses: actions/checkout@v4

            - name: Set Up Lua
              uses: leafo/gh-actions-lua@v10

            - name: Set Up LuaRocks
              uses: leafo/gh-actions-luarocks@v4

            - name: Install Dependencies
              run: |
                  luarocks install --local --only-deps

            - name: Lint Code
              run: |
                  luacheck .  # Ensure this is the correct command for your linting tool

    test:
        needs: lint
        runs-on: ubuntu-latest
        steps:
            - name: Checkout Code
              uses: actions/checkout@v4

            - name: Set Up Lua
              uses: leafo/gh-actions-lua@v10

            - name: Set Up LuaRocks
              uses: leafo/gh-actions-luarocks@v4

            - name: Install Dependencies
              run: |
                  luarocks install --local --only-deps

            - name: Run Tests
              run: |
                  busted  # Ensure this is the correct command for your testing framework

    docs:
        needs: test
        runs-on: ubuntu-latest
        steps:
            - name: Checkout Code
              uses: actions/checkout@v4

            - name: Set Up Lua
              uses: leafo/gh-actions-lua@v10

            - name: Set Up LuaRocks
              uses: leafo/gh-actions-luarocks@v4

            - name: Install Dependencies
              run: |
                  luarocks install --local --only-deps
                  luarocks install ldoc  # Install LDoc for documentation generation

            - name: Build Documentation
              run: |
                  ldoc .  # Adjust this command if your documentation files are in a specific directory

    release:
        runs-on: ubuntu-latest
        needs: 
            - test
        steps:
            - name: Checkout Code
              uses: actions/checkout@v4
              with:
                  fetch-depth: 0  # Fetch all history for changelog generation

            - name: Set Up Lua
              uses: leafo/gh-actions-lua@v10

            - name: Set Up LuaRocks
              uses: leafo/gh-actions-luarocks@v4

            - name: Install Dependencies
              run: |
                  luarocks install --local --only-deps

            - name: Configure Git
              run: |
                  git config user.name "${{ github.actor }}"
                  git config user.email "${{ github.actor }}@users.noreply.github.com"

            - name: Determine Version Type from Commit Message
              id: get_version
              run: |
                  echo "Commit message: ${{ github.event.head_commit.message }}"
                  if [[ "${{ github.event.head_commit.message }}" == feat\!* ]]; then
                      echo "::set-output name=version_type::major"
                      echo "::set-output name=release_proceed::true"
                  elif [[ "${{ github.event.head_commit.message }}" == feat:* ]]; then
                      echo "::set-output name=version_type::minor"
                      echo "::set-output name=release_proceed::true"
                  elif [[ "${{ github.event.head_commit.message }}" == fix:* ]]; then
                      echo "::set-output name=version_type::patch"
                      echo "::set-output name=release_proceed::true"
                  else
                      echo "::set-output name=release_proceed::false"
                  fi

            - name: Run Release Script
              if: steps.get_version.outputs.release_proceed == 'true'
              run: |
                  ./scripts/release.sh ${{ steps.get_version.outputs.version_type }}
```

### Key Additions:
- **Install LDoc**: The step `luarocks install ldoc` installs LDoc, which is necessary for generating documentation.
- **Build Documentation Job**: A new job named `docs` is added, which runs after the `test` job. This job checks out the code, sets up Lua and LuaRocks, installs dependencies, and then runs `ldoc .` to generate the documentation.

### Conclusion
With these modifications, your CI workflow will automatically build documentation for your **Willow** Lua project after running tests. Make sure your Lua source files are properly documented using LDoc comments so that the generated documentation is meaningful. If you have any further questions or need additional modifications, feel free to ask!

**user**: Okay! Just to check, my tests will be in the tests/ directory, built docs in the docs/ directory (I also want these to be on GitHub pages via the docs branch like in my Python stuff too), and source in the source/ directory. Does that work?

**ai**: Yes, that structure will work well! Here’s how you can set up your project with the specified directories and ensure that your CI workflow builds the documentation correctly and deploys it to GitHub Pages.

### Project Structure

Based on your requirements, your project structure will look like this:

```
willow/
├── source/
│   ├── main.lua          # Your main Lua source file
│   └── ...               # Other Lua source files
├── tests/
│   ├── test_main.lua     # Your test files
│   └── ...               # Other test files
├── docs/
│   └── ...               # Generated documentation will go here
├── CHANGELOG.md
├── LICENSE
├── README.md
├── CONTRIBUTING.md
└── ci.yml                # Your CI workflow file
```

### CI Workflow Adjustments

To ensure that your documentation is built and deployed to the `docs` branch for GitHub Pages, you can modify your CI workflow as follows:

1. **Build Documentation**: Ensure that the documentation is generated in the `docs/` directory.
2. **Deploy to GitHub Pages**: Use a GitHub Action to deploy the contents of the `docs/` directory to the `docs` branch.

### Updated CI Workflow

Here’s how you can modify your `ci.yml` to include the documentation deployment step:

```yaml
name: Continuous Integration (CI) Tests

on:
    push:
        branches: [ main ]
    pull_request:
        branches: [ main ]

concurrency:
    group: ${{ github.workflow }}-${{ github.event.pull_request.number || github.ref }}
    cancel-in-progress: true

permissions:
    contents: write

jobs:
    lint:
        runs-on: ubuntu-latest
        steps:
            - name: Checkout Code
              uses: actions/checkout@v4

            - name: Set Up Lua
              uses: leafo/gh-actions-lua@v10

            - name: Set Up LuaRocks
              uses: leafo/gh-actions-luarocks@v4

            - name: Install Dependencies
              run: |
                  luarocks install --local --only-deps

            - name: Lint Code
              run: |
                  luacheck .  # Ensure this is the correct command for your linting tool

    test:
        needs: lint
        runs-on: ubuntu-latest
        steps:
            - name: Checkout Code
              uses: actions/checkout@v4

            - name: Set Up Lua
              uses: leafo/gh-actions-lua@v10

            - name: Set Up LuaRocks
              uses: leafo/gh-actions-luarocks@v4

            - name: Install Dependencies
              run: |
                  luarocks install --local --only-deps

            - name: Run Tests
              run: |
                  busted tests/  # Run tests located in the tests directory

    docs:
        needs: test
        runs-on: ubuntu-latest
        steps:
            - name: Checkout Code
              uses: actions/checkout@v4

            - name: Set Up Lua
              uses: leafo/gh-actions-lua@v10

            - name: Set Up LuaRocks
              uses: leafo/gh-actions-luarocks@v4

            - name: Install Dependencies
              run: |
                  luarocks install --local --only-deps
                  luarocks install ldoc  # Install LDoc for documentation generation

            - name: Build Documentation
              run: |
                  ldoc source/ -o docs/  # Generate documentation in the docs directory

    release:
        runs-on: ubuntu-latest
        needs: 
            - test
        steps:
            - name: Checkout Code
              uses: actions/checkout@v4
              with:
                  fetch-depth: 0  # Fetch all history for changelog generation

            - name: Set Up Lua
              uses: leafo/gh-actions-lua@v10

            - name: Set Up LuaRocks
              uses: leafo/gh-actions-luarocks@v4

            - name: Install Dependencies
              run: |
                  luarocks install --local --only-deps

            - name: Configure Git
              run: |
                  git config user.name "${{ github.actor }}"
                  git config user.email "${{ github.actor }}@users.noreply.github.com"

            - name: Determine Version Type from Commit Message
              id: get_version
              run: |
                  echo "Commit message: ${{ github.event.head_commit.message }}"
                  if [[ "${{ github.event.head_commit.message }}" == feat\!* ]]; then
                      echo "::set-output name=version_type::major"
                      echo "::set-output name=release_proceed::true"
                  elif [[ "${{ github.event.head_commit.message }}" == feat:* ]]; then
                      echo "::set-output name=version_type::minor"
                      echo "::set-output name=release_proceed::true"
                  elif [[ "${{ github.event.head_commit.message }}" == fix:* ]]; then
                      echo "::set-output name=version_type::patch"
                      echo "::set-output name=release_proceed::true"
                  else
                      echo "::set-output name=release_proceed::false"
                  fi

            - name: Run Release Script
              if: steps.get_version.outputs.release_proceed == 'true'
              run: |
                  ./scripts/release.sh ${{ steps.get_version.outputs.version_type }}

    deploy:
        needs: docs
        runs-on: ubuntu-latest
        steps:
            - name: Checkout Code
              uses: actions/checkout@v4

            - name: Deploy Documentation to GitHub Pages
              uses: JamesIves/github-pages-deploy-action@v4
              with:
                  branch: docs
                  folder: docs/
```

### Key Additions:
- **Build Documentation**: The `Build Documentation` step generates the documentation from the `source/` directory and outputs it to the `docs/` directory.
- **Deploy Job**: A new `deploy` job is added that runs after the `docs` job. It uses the `JamesIves/github-pages-deploy-action` to deploy the contents of the `docs/` directory to the `docs` branch of your repository.

### Conclusion
With this setup, your CI workflow will automatically build documentation from your Lua source files and deploy it to GitHub Pages. Make sure your Lua source files are properly documented using LDoc comments so that the generated documentation is meaningful. If you have any further questions or need additional modifications, feel free to ask!

**user**: What would an example test_main.lua do? 

**ai**: An example `test_main.lua` file for your **Willow** Lua project would typically contain unit tests that verify the functionality of your library. If you're using a testing framework like **Busted**, the tests would be structured using its syntax.

Here’s a simple example of what `test_main.lua` might look like, assuming you have a function in your library that you want to test. Let's say you have a function called `add` in your `main.lua` file that adds two numbers together.

### Example `test_main.lua`

```lua
-- Import the main module
local willow = require("willow")  -- Adjust the module name based on your structure

describe("Willow Library", function()
    describe("add function", function()
        it("should return the sum of two numbers", function()
            local result = willow.add(2, 3)
            assert.are.equal(result, 5)
        end)

        it("should return the sum of negative numbers", function()
            local result = willow.add(-2, -3)
            assert.are.equal(result, -5)
        end)

        it("should return the sum of a number and zero", function()
            local result = willow.add(5, 0)
            assert.are.equal(result, 5)
        end)

        it("should return the sum of zero and a number", function()
            local result = willow.add(0, 5)
            assert.are.equal(result, 5)
        end)
    end)
end)
```

### Explanation of the Test File:

1. **Import the Module**: The script starts by requiring the main module (in this case, `willow`). Adjust the module name based on your actual structure.

2. **Describe Blocks**: The `describe` function is used to group related tests. In this example, we have a group for the `add` function.

3. **It Blocks**: Each `it` block defines a specific test case. The description inside the `it` function explains what the test is checking.

4. **Assertions**: The `assert.are.equal` function checks if the actual result matches the expected result. If the assertion fails, the test will fail, and you'll see an error message indicating what went wrong.

### Running the Tests

To run the tests using Busted, you would typically execute the following command in your terminal:

```bash
busted tests/test_main.lua
```

This command will run all the tests defined in `test_main.lua` and provide output indicating which tests passed or failed.

### Conclusion

This example provides a basic structure for unit testing in your **Willow** Lua project. You can expand upon this by adding more tests for different functions and edge cases as your library grows. If you have any specific functions or features you'd like to test, feel free to share, and I can help you create more tailored tests!

**user**: Can you provide a test_main.lua which doesn't actually test anything, just as a placeholder so I remember syntax and can implement them later?

**ai**: Certainly! Here’s a simple placeholder `test_main.lua` file that uses the Busted testing framework syntax but doesn't actually test anything. This will serve as a template for you to fill in with your actual tests later.

### Placeholder `test_main.lua`

```lua
-- Import the main module
local willow = require("willow")  -- Adjust the module name based on your structure

describe("Willow Library", function()
    describe("Functionality Placeholder", function()
        it("should do something", function()
            -- Placeholder for actual test
            -- local result = willow.some_function()
            -- assert.are.equal(result, expected_value)
        end)

        it("should handle edge cases", function()
            -- Placeholder for edge case test
            -- local result = willow.some_function(edge_case_input)
            -- assert.are.equal(result, expected_edge_case_value)
        end)

        it("should return expected output", function()
            -- Placeholder for output test
            -- local result = willow.some_function(input)
            -- assert.are.equal(result, expected_output)
        end)
    end)
end)
```

### Explanation of the Placeholder:

1. **Module Import**: The script starts by requiring the main module (in this case, `willow`). Adjust the module name based on your actual structure.

2. **Describe Blocks**: The `describe` function is used to group related tests. In this example, we have a group for the functionality of the Willow library.

3. **It Blocks**: Each `it` block defines a specific test case. The descriptions inside the `it` functions indicate what you plan to test.

4. **Placeholders for Assertions**: Inside each `it` block, there are comments indicating where you can implement your actual tests. You can uncomment and fill in the logic as you develop your library.

### Usage

You can run this placeholder test file using Busted just like any other test file:

```bash
busted tests/test_main.lua
```

This will execute the tests, and since there are no assertions, it will simply indicate that the tests have run without any failures.

### Conclusion

This placeholder file provides a structure for you to remember the syntax and implement your tests later. Feel free to modify the descriptions and add more `it` blocks as needed! If you have any further questions or need additional assistance, just let me know!

**user**: Okay I have the basic project down, now. Can you walk me through writing the source for the logging and cli for willow?

**ai**: Absolutely! Let's walk through creating the basic structure for the logging and command-line interface (CLI) components of your **Willow** Lua library. 

### 1. Logging Module

We'll create a simple logging module that allows you to log messages at different levels (e.g., debug, info, warning, error). This module will provide functions to log messages to the console.

#### Create `src/logger.lua`

```lua
local logger = {}

-- Log levels
logger.levels = {
    DEBUG = 1,
    INFO = 2,
    WARNING = 3,
    ERROR = 4,
}

-- Set the current log level (default is INFO)
logger.current_level = logger.levels.INFO

-- Function to set the log level
function logger.set_level(level)
    if logger.levels[level] then
        logger.current_level = logger.levels[level]
    else
        error("Invalid log level: " .. tostring(level))
    end
end

-- Function to log messages
function logger.log(level, message)
    if logger.levels[level] >= logger.current_level then
        print("[" .. level .. "] " .. message)
    end
end

-- Convenience functions for different log levels
function logger.debug(message)
    logger.log("DEBUG", message)
end

function logger.info(message)
    logger.log("INFO", message)
end

function logger.warning(message)
    logger.log("WARNING", message)
end

function logger.error(message)
    logger.log("ERROR", message)
end

return logger
```

### Explanation of the Logging Module:

- **Log Levels**: The module defines different log levels (DEBUG, INFO, WARNING, ERROR) and their corresponding numeric values.
- **Current Log Level**: The current log level is set to INFO by default, but it can be changed using the `set_level` function.
- **Logging Function**: The `log` function checks if the message's level is greater than or equal to the current log level before printing it to the console.
- **Convenience Functions**: Functions for each log level (e.g., `debug`, `info`, `warning`, `error`) provide a simple interface for logging messages.

### 2. CLI Module

Next, we'll create a simple command-line interface (CLI) module that allows users to interact with your library via command-line arguments.

#### Create `src/cli.lua`

```lua
local cli = {}

-- Function to parse command-line arguments
function cli.parse_args()
    local args = {}
    for i = 1, #arg do
        args[i] = arg[i]
    end
    return args
end

-- Function to display help information
function cli.show_help()
    print("Usage: willow [options]")
    print("Options:")
    print("  --help      Show this help message")
    print("  --version   Show the version of Willow")
    -- Add more options as needed
end

-- Function to handle commands
function cli.handle_commands()
    local args = cli.parse_args()

    if #args == 0 then
        print("No command provided. Use --help for usage information.")
        return
    end

    for _, arg in ipairs(args) do
        if arg == "--help" then
            cli.show_help()
            return
        elseif arg == "--version" then
            print("Willow version 1.0.0")  -- Replace with dynamic version if needed
            return
        else
            print("Unknown command: " .. arg)
            cli.show_help()
            return
        end
    end
end

return cli
```

### Explanation of the CLI Module:

- **Argument Parsing**: The `parse_args` function collects command-line arguments into a table.
- **Help Function**: The `show_help` function prints usage information and available options.
- **Command Handling**: The `handle_commands` function checks the provided arguments and executes the appropriate action (e.g., showing help or version information).

### 3. Integrating Logging and CLI

Now that we have the logging and CLI modules, you can integrate them into your main application logic. For example, you might have a `main.lua` file that uses both modules:

#### Create `src/main.lua`

```lua
local logger = require("logger")
local cli = require("cli")

-- Set the desired log level (optional)
logger.set_level("DEBUG")

-- Handle command-line arguments
cli.handle_commands()

-- Example logging
logger.info("Willow has started.")
```

### Summary

- **Logging Module**: Provides a simple logging interface with different log levels.
- **CLI Module**: Parses command-line arguments and provides help and version information.
- **Main Application**: Integrates both modules and demonstrates their usage.

### Next Steps

1. **Expand Functionality**: You can expand the logging module to log to files or support more complex logging formats.
2. **Add More CLI Commands**: Enhance the CLI module with additional commands and options as needed for your application.
3. **Testing**: Write tests for both the logging and CLI modules to ensure they behave as expected.

Feel free to ask if you have any questions or need further assistance with specific features!