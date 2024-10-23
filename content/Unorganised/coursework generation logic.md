PROPERLY DOCUMENT BOTH `logbookgenerator` AND `lincoln-logbook`!!!


COURSEWORK GENERATION LOGIC
===========================

During normal input parsing, find the coursework directory and return an ordered list of dictionaries, where each dictionary represents a set of questions:

```
[
	{
		"question_1": code,
		"question_2": code,
	},
	{
		"question_3": code,
		"question_4": code,
	},
	{
		"question_5": code,
	}
]
```

This code is then processed, extracting all answer comments (with the option to remove answer comments during extraction - yet to be implemented - set to true), similar to original logbook generation. However, this process will result in new "clean" code files, without answer comments, too.

This new context should be separate from the logbook context, if possible, and rendered separately, too. Maybe generalise the logbook generation to re-use that function, with togglable cover, tables of contents, and references sections.

Note: before implementing this logic, ensure that the titles like "task_1" -> "Task 1" etc. can be generalised, so the coursework can title things as "question_1" -> "Question 1" etc.

Note: do not validate the coursework directory, it should be generated outside of weeks with the "clean" code files. Coursework files should be inputted like normal ones, found by matching "e__-coursework-______.cpp" (glob).