<%*
moduleCode = tp.file.folder().split(" ")[0]
moduleName = tp.file.folder().split(" ").slice(1).join(" ")
await tp.file.rename(moduleCode + " " + moduleName)

moduleCoordinatorName = await tp.system.prompt("Who coordinates this module?")
moduleCoordinatorNames = moduleCoordinatorName.split(" ")

moduleCoordinatorFirstNameInitial = moduleCoordinatorNames[1][0]
moduleCoordinatorLastName = moduleCoordinatorNames[moduleCoordinatorNames.length - 1]

moduleCoordinatorEmail = (moduleCoordinatorFirstNameInitial + moduleCoordinatorLastName[0]).toLowerCase() + "@lincoln.ac.uk"
-%>
# **<% moduleCode %>** <% moduleName %>

>[!IMPORTANT]- Module Coordinator
><% moduleCoordinatorName %>: [<% moduleCoordinatorEmail %>](mailto:<% moduleCoordinatorEmail %>)

>[!TIP]- Course Components
>>[!TIP]+ Portfolio (40%)
>>>[!TIP]+ Blackboard Assessments (15%)
>>>- [ ] Weekly Blackboard Assessment 1 (3%)
>>>- [ ] Weekly Blackboard Assessment 2 (3%)
>>>- [ ] Weekly Blackboard Assessment 3 (3%)
>>>- [ ] Weekly Blackboard Assessment 4 (3%)
>>>- [ ] Weekly Blackboard Assessment 5 (3%)
>>
>>>[!TIP] Mid-Term Test (25%)
>
>>[!TIP] Final Test (60%)

>[!HINT]- Cheat Sheet
>[[<% moduleCode %> <% moduleName %> Cheat Sheet]]

>[!NOTE]+ Notes
>Notes are bullet-pointed before the lecture (for priming), then refined into more questioning notes during the lecture, and then refined into specific topic notes each reading week.
>
>>[!NOTE] [[Some Topic]]
>>- [[<% moduleCode %> <% moduleName %> Lecture 1]]
