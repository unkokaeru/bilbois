<%*
moduleName = tp.file.folder()

lectureNumber = await tp.system.prompt("What number lecture is this?", "1")
previousLectureName = moduleName + " Lecture " + (Number(lectureNumber) - 1)
thisLectureName = moduleName + " Lecture " + lectureNumber
nextLectureName = moduleName + " Lecture " + (Number(lectureNumber) + 1)
practicalName = moduleName + " Practical " + lectureNumber

await tp.file.rename(thisLectureName)
-%>

- Previous Lecture: [[<% previousLectureName %>]].
- Practical: [[<% practicalName %>]] ([[../../../../../../Auto-Generated/Attachments/<% practicalName %>.pdf|Practical Sheet]]).
- Next Lecture: [[<% nextLectureName %>]].

![[../../../../../../Auto-Generated/Attachments/<% thisLectureName %> Notes.pdf]]

## What is blah blah blah? #card
This is a short summarising definition.

Then this is some more in-depth explanation. Maybe with some properties:

- Property::This is a property.
- Property 2::This is another property.

### etc.

Maybe in this sub-section there is ==some word== that should be guessed in a flashcard.