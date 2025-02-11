```meta-bind-button
label: Populate Template
icon: ""
hidden: false
class: ""
tooltip: ""
id: ""
style: destructive
actions:
  - type: command
    command: python-scripter:run-something.py
  - type: replaceSelf
    replacement: "#university #mathematics #cheatsheet #todo"

```

>[!WARNING] Disclaimer
>This was all automatically generated and so has a high chance of containing incorrect or badly formatted information. Please edit this note or even re-generate it until it fits your standard.

## {{ module.info.name.formatted }} Cheat Sheet

>[!TIP] Made by William Fayers :)
>Make sure to read this before the exam - I recommend completing a practice test with it so you learn where everything is and can ask if you don't understand something. I might've made mistakes! There's a sudoku at the end in case you finish early, and the cheat sheet is generated based on analysis of past exams and given material. It should also include topics that I don't think will come up, but they theoretically could - these topic explanations will be much more brief.

### Possible Question Topics and their Explanations

{{ cheatsheet.content }}

## Simple Sudoku

```meta-bind-button
label: Generate sudoku
icon: ""
hidden: false
class: ""
tooltip: ""
id: ""
style: primary
actions:
  - type: command
    command: python-scripter:run-sudoku_engine.py
  - type: replaceSelf
    replacement: "SUDOKU_PLACEHOLDER"

```