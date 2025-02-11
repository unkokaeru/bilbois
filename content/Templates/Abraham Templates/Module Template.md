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
    replacement: "#university #mathematics #module"

```

>[!WARNING] Disclaimer
>This was all automatically generated and so has a high chance of containing incorrect or badly formatted information. Please edit this note or even re-generate it until it fits your standard.

Module co-ordinator: **{{ module.info.coordinator.name }}** (*{{ module.info.coordinator.email }}*).

---
## Course Components

### Coursework

- **Weight:** {{ module.info.components.coursework.weight * 100 }}%
- **Assignments:**
  {% for assignment in module.info.components.coursework.assignments %}  - {{ assignment }}{% endfor %}

### Portfolio

- **Weight:** {{ module.info.components.portfolio.weight * 100 }}%
- **Tests:**
  {% for test in module.info.components.portfolio.tests %}  - {{ test }}{% endfor %}

---
## Learning Outcomes

{% for outcome in module.info.outcomes %}- [ ] **LO**{{ loop.index }}{{ outcome }}{% endfor %}

---
## Revision

[[{{ module.info.name.long }} Cheat Sheets]]
[[{{ module.info.name.long }} Practice Tests]]
[[{{ module.info.name.long }} Flashcards]]

---
## Notes

### Priming (*before lecture*)

{% for lecture_number, lecture_content in module.lectures.items() %}- [[{{ module.info.name.long }} Pre-Lecture {{ lecture_number }}]]: {% for topic in lecture_content.topics %}{{ topic }}, {% endfor %}.{% endfor %}

---
### Questioning (*during lecture*)

{% for lecture_number, lecture_content in module.lectures.items() %}- [[{{ module.info.name.long }} Lecture {{ lecture_number }}]]: {% for topic in lecture_content.topics %}{{ topic }}, {% endfor %}.{% endfor %}

---
### Refining (*after lecture*)

{% for topic, subtopics in module.notes.items() %}#### {{ topic }}
{% for subtopic, notes in subtopics.items() %}##### {{ subtopic }}
{% for note_name, note in notes.items() %}- [[{{ note_name }}]]: {{ note.summary }}
{% endfor %}{% endfor %}{% endfor %}