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
    replacement: "#university #mathematics #subtopic #todo"

```

>[!WARNING] Disclaimer
>This was all automatically generated and so has a high chance of containing incorrect or badly formatted information. Please edit this note or even re-generate it until it fits your standard.

---
## Key Concepts
*Throughout my study of this sub-topic, these points have stuck out to me the most*.

- ...

---
## Common Mistakes and Tips
*These are some common mistakes I make in the sub-topic and how I try to overcome them*.

- ...

---
## Further Reading
*Associated books and pages to build on the sub-topic, both recommended by the university and things I found useful during study*.

...

---
## Notes

{% for name, note in notes.items() %}- **[[{{ name }}]]**: {{ note.summary }}.
{% endfor %}