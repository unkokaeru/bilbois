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
    replacement: "#university #mathematics #questions #todo"

```

>[!WARNING] Disclaimer
>This was all automatically generated and so has a high chance of containing incorrect or badly formatted information. Please edit this note or even re-generate it until it fits your standard.

---

{% for question_number, question in questions.items() %}## Question {{ question_number }} ({{ question.marks }} marks)
*{{ question.topic }}*

{{ question.content }}

### Potential Solution

{{ question.solution }}

### Solution Comparison (with official solution)

...

---
{% endfor %}