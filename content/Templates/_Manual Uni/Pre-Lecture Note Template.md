<%*
lectureNumber = await tp.system.prompt("What number lecture is this?", "1")
moduleName = tp.file.folder()

preLectureName = moduleName + " Pre-Lecture " + lectureNumber
lectureName = moduleName + " Lecture " + lectureNumber
practicalName = moduleName + " Practical " + lectureNumber

await tp.file.rename(preLectureName)
-%>

- Lecture: [[<% lectureName %>]] ([[../../../../../../Auto-Generated/Attachments/<% preLectureName %> NOTES.pdf|Provided Notes]]).
- Practical: [[<% practicalName %>]] ([[../../../../../../Auto-Generated/Attachments/<% practicalName %>.pdf|Practical Sheet]]).

...