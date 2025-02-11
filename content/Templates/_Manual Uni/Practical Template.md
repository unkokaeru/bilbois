<%*
practicalNumber = await tp.system.prompt("What number practical is this?", "1")
moduleName = tp.file.folder()

practicalName = moduleName + " Practical " + practicalNumber

await tp.file.rename(practicalName)
-%>

- [[../../../../../../Auto-Generated/Attachments/<% practicalName %>.pdf|Practical Sheet]].

## Question 1

...