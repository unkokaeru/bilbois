<%*
lectureNumber = await tp.system.prompt("What number lecture is this?", "1")
moduleName = tp.file.folder()

previousLectureName = moduleName + " Lecture " + (Number(lectureNumber) - 1)
preLectureName = moduleName + " Pre-Lecture " + lectureNumber
nextLectureName = moduleName + " Lecture " + (Number(lectureNumber) + 1)

await tp.file.rename(fileName)
-%>

- Previous Lecture: [[<% previousLectureName %>]].
- Pre-Lecture: [[<% preLectureName %>]] ([[../../../../../../Auto-Generated/Attachments/<% preLectureName %> NOTES.pdf|Provided Notes]]).
- Next Lecture: [[<% nextLectureName %>]].

## What is blah blah blah? #card
This is a short summarising definition.

Then this is some more in-depth explanation. Maybe with some properties:

- Property::This is a property.
- Property 2::This is another property.

### etc.

Maybe in this sub-section there is ==some word== that should be guessed in a flashcard.