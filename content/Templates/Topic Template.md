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
    replacement: "#university #mathematics #topic #todo"

```

>[!WARNING] Disclaimer
>This was all automatically generated and so has a high chance of containing incorrect or badly formatted information. Please edit this note or even re-generate it until it fits your standard.

## Big Picture Overview

```meta-bind-button
label: Create a new Excalidraw canvas
icon: ""
hidden: false
class: ""
tooltip: ""
id: ""
style: default
actions:
  - type: command
    command: obsidian-excalidraw-plugin:excalidraw-autocreate-and-embed-new-tab
  - type: replaceSelf
    replacement: ""

```

## Topic-level Questions
*A selection of curated questions to test topics brought together from the entire topic*.

...

## Sub-Topics

{% for subtopic_name, subtopic_content in subtopics.items() %}- [[{{ subtopic_name }}]].
{% endfor %}