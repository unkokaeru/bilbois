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
    replacement: "#university #mathematics #refined #note #todo"

```

>[!WARNING] Disclaimer
>This was all automatically generated and so has a high chance of containing incorrect or badly formatted information. Please edit this note or even re-generate it until it fits your standard.

*{{ summary }}*

---
## Definitions

{% for name, definition in content.definitions.items() %}>[!NOTE] [[Definition of {{ name }}]]
>{{ definition }}
{% endfor %}

---
## Examples

{% for question, answer in content.examples.items() %}### Question

{{ question }}

#### Answer

{{ answer }}

---
{% endfor %}

---
## Historical Context

{{ content.historical_context }}

---
## Flashcards

```meta-bind-button
label: Generate flashcards
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
    replacement: ""

```
