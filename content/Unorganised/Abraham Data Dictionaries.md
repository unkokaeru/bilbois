FLOWS
=====

Overall program flow:
Read input information -> Create data -> Render module page -> User can navigate pages and manually render each page

Overall note rendering flow (probably):
Module -> Topics -> Sub-Topics -> Refined Notes -> Definitions -> Questioning Notes -> Priming Notes -> Flashcards -> Question Answers -> Cheat Sheet(s) (midterm and final?)

When bits of data are rendered in multiple blocks, make those bits of text linked with MetaBind for easier editing/(re-)rendering + obviously only initially render in one place.

MAYBE ACTUALLY DO ALL RENDERS WITH **REPLACE SELF** BUTTONS???? FOR EASIER FINE-GRAIN RE-RENDERING???????

---

DATA
====

"Templates/Module Template" rendered with...
```
MODULE_LEVEL_DATA = {
    "module": {
        "info": {
            "coordinator": {
                "name": "some name",
                "email": "some email",
            },
            "name": {
                "short": "some module name",
                "long": "some module name with code",
                "formatted": "**some module code** some module name",
            },
            "components": {
                "coursework": {
                    "weight": 0.4,
                    "assignments": [
                        "Weekly Assignment 1",
                        "Weekly Assignment 2",
                        ...,
                    ],
                },
                "portfolio": {
                    "weight": 0.6,
                    "tests": [
                        "Mid-Term",
                        "Final",
                        ...
                    ],
                },
            },
            "outcomes": [
                "LO1",
                "LO2",
                ...,
            ],
        },
        "lectures": {
            "1": {
                "topics": [
                    "some topic",
                    "some other topic",
                    "another topic",
                    ...
                ],
                "questions": {
                    "is this a question?": "this is an answer.",
                    "is this a question?": "this is an answer.",
                    "is this a question?": "this is an answer.",
                    ...,
                },
            },
            "2": {
                "topics": [
                    "some topic",
                    "some other topic",
                    "another topic",
                    ...
                ],
                "questions": {
                    "is this a question?": "this is an answer.",
                    "is this a question?": "this is an answer.",
                    "is this a question?": "this is an answer.",
                    ...,
                },
            },
            ...,
        },
        "notes": {
            "some topic": {
                "some sub-topic": {
                    "some note": {
                        "summary": "this is a summary of the note",
                        "content": {
                            "definitions": {
                                "some name": "some definition",
                                "some name": "some definition",
                                "some name": "some definition",
                                ...,
                            },
                            "examples": {
                                "example question": "example answer",
                                "example question": "example answer",
                                "example question": "example answer",
                                ...,
                            },
                            "historical_context": "this is some historical context",
                        },
                    },
                    ...,
                },
                ...,
            },
            ...,
        }
    }
}  # made from PDFs (and user input if anything is missing)
```

"Templates/Questions Template" rendered with...
```
QUESTION_LEVEL_DATA = {
    "questions": {
        "1": {
            "topic": "some topic",
            "marks": "3",
            "content": "some content",
            "solution": "some solution",
        },
        "2": {
            "topic": "some topic",
            "marks": "10",
            "content": "some content",
            "solution": "some solution",
        },
        ...,
    }
}  # made from PDFs
```

"Templates/Topic Template" rendered with...
```
TOPIC_LEVEL_DATA = {
    "subtopics": {
        "some sub-topic": {
            "some note": {
                "summary": "this is a summary of the note",
                "content": {
                    "definitions": {
                        "some name": "some definition",
                        "some name": "some definition",
                        "some name": "some definition",
                        ...,
                    },
                    "examples": {
                        "example question": "example answer",
                        "example question": "example answer",
                        "example question": "example answer",
                        ...,
                    },
                    "historical_context": "this is some historical context",
                    },
                },
                ...,
            },
            ...,
        },
        ...,
    }
}
```

"Templates/Sub-Topic Template" rendered with...
```
SUBTOPIC_LEVEL_DATA = {
    "notes": {
        "some note": {
            "summary": "this is a summary of the note",
            "content": {
                "definitions": {
                    "some name": "some definition",
                    "some name": "some definition",
                    "some name": "some definition",
                    ...,
                },
                "examples": {
                    "example question": "example answer",
                    "example question": "example answer",
                    "example question": "example answer",
                    ...,
                },
                "historical_context": "this is some historical context",
            },
        },
        ...,
    }
}  # made by extracting a value from module level dictionary and assigning to a new key
```

"Templates/Refined Note Template" rendered with...
```
NOTE_LEVEL_DATA = {
    "summary": "this is a summary of the note",
    "content": {
        "definitions": {
            "some name": "some definition",
            "some name": "some definition",
            "some name": "some definition",
            ...,
        },
        "examples": {
            "example question": "example answer",
            "example question": "example answer",
            "example question": "example answer",
            ...,
        },
        "historical_context": "this is some historical context",
    },
}  # made by extracting from module level dictionary
```

"Templates/Flashcards Template" rendered with...
```
FLASHCARDS_LEVEL_DATA = {
    "flashcards": {
        "some front text": "some back text",
        "some front text": "some back text",
        ...,
    }
}  # made by simplifying notes
```
*note: think about where to link to these - can always do note level and then combine them up for each level, maybe?*

"Templates/Definition Template" rendered with...
```
DEFINITION_LEVEL_DATA = {
    "definition": "some definition",
}  # made by extracting a value from note level dictionary and assigning to a new key
```
*note: ensure the name of any definitions starts with "Definition of "*

"Templates/Priming Note Template" and "Templates/Questioning Note Template" rendered with...
```
LECTURE_LEVEL_DATA = {
    "topics": [
        "some topic",
        "some other topic",
        "another topic",
        ...,
    ],
    "questions": {
        "is this a question?": "this is an answer.",
        "is this a question?": "this is an answer.",
        "is this a question?": "this is an answer.",
        ...,
    },
}  # made by extracting from module level dictionary
```

"Templates/Cheat Sheet Template" rendered with...
```
CHEATSHEET_LEVEL_DATA = {
    "module": {
        "info": {
            "coordinator": {
                "name": "some name",
                "email": "some email",
            },
            "name": {
                "short": "some module name",
                "long": "some module name with code",
                "formatted": "**some module code** some module name",
            },
            "components": {
                "coursework": {
                    "weight": 0.4,
                    "assignments": [
                        "Weekly Assignment 1",
                        "Weekly Assignment 2",
                        ...,
                    ],
                },
                "portfolio": {
                    "weight": 0.6,
                    "tests": [
                        "Mid-Term",
                        "Final",
                        ...
                    ],
                },
            },
            "outcomes": [
                "LO1",
                "LO2",
                ...,
            ],
        }
    },
    "cheatsheet": {
        "content": "..."
    }
}  # made by appending module info extracted from module level dictionary onto novel content based on existing module folder
```
*note: re-think the design and modularity of the cheat sheet, maybe I can re-use more data.*