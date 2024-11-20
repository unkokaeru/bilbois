|   |
|---|
|## Valid JavaScript Comments|
|In JavaScript, there are two types of comments:|
|1. Single-line comments start with `//`<br>    <br>2. Multi-line or inline comments start with `/*` and end with `*/`|
|The input will be a sequence of `//`, `/*` and `*/`. **Every** `/*` **must have a** `*/` **that immediately follows it**. To add, there can be **no single-line comments in between multi-line comments** in between the `/*` and `*/`.|
|Create a function that returns `True` if comments are properly formatted, and `False` otherwise.|
|### Examples|
|```<br>comments_correct("//////") <br>output = True<br># 3 single-line comments: ["//", "//", "//"]<br><br>comments_correct("/**//**////**/")<br>output = True<br># 3 multi-line comments + 1 single-line comment:<br># ["/*", "*/", "/*", "*/", "//", "/*", "*/"]<br><br>comments_correct("///*/**/")<br>output = False<br># The first /* is missing a */<br><br>comments_correct("/////")<br>output = False<br># The 5th / is single, not a double //<br>```|