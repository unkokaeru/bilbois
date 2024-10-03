GitHub repository: https://github.com/unkokaeru/lincoln-logbook/
*Implement Workflows/Actions to auto-build the logbook based on the below criteria.*

==Maybe I'll actually create a pip project to convert the code to markdown and run that in the action, just to make the code neater and more of a project?==

**Cover**: University of Lincoln, Scientific Computing Logbook (Semester A), MTH2008. William Fayers, 27378661.
*Generate based on a config file: uni name, module name, semester, module code, name, student id*.

**Statement**: "I confirm that this logbook is entirely my own work and that all references and quotations, from both primary and secondary sources, have been fully identified and properly acknowledged." - William Fayers.
*Generate based on a config file: name*.

**Running table**:
Table of Contents
	**Disclaimer**.................................................................................1
	**Week 1**......................................................................................3
		1.1 Topic being learned: tasks being completed..............4
		1.2 Topic being learned: tasks being completed.............5
		*1.3 Topic being learned: tasks being completed.............6*
	**Week 2**.....................................................................................7
		2.1 Topic being learned: tasks being completed..............8
*Generate based on project structure*.

Each week will start with a summary (incl. reflection) and then each sub-section is a task completed either in lab (no formatting) or by myself (italics).
*Generate based on markdown file/file names*.

**Dates**: Included on each task within each week at the beginning of a section (formatted differently to the body, undecided currently).
*Generate based on a folder names*.

**Structure**: Clear, as previously mentioned. Focus on prose.
*Generate based on markdown file*.

**Records of computer classes**: Describe and explain what was learned.
*Generate based on markdown file*.

**Computer program listings and output**: Well formatted commented code, including flowcharts when requested (or always, if I can figure out how to auto-generate them - Mermaid/Excalidraw??)
*Generate based on program comments*.

**Evidence of homework**: Do logged work outside of class.
*Generate based on file names*

**Evidence of learning from books and internet resources**: Reference books and other resources as points of education throughout the logbook.
*Generate based on markdown file*.

**Reflective self-assessment**: What did you learn in the lab tasks this week? How well did I learn it? How does my solution compare with the official solution? How can I extend the concepts used in the tasks to form a new project?
*Generate based on markdown file*.

Note: Should be in PDF format.
*Generate based on pandoc reference file*.

YAML config file.