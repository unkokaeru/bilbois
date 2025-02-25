<%*
thisMeetingNumber = await tp.system.prompt("What number meeting is this?", "1")
lastMeeting = "Group Meeting " + (Number(thisMeetingNumber) - 1) + "|Last Meeting"
nextMeeting = "Group Meeting " + (Number(thisMeetingNumber) + 1) + "|Next Meeting"

startTime = await tp.system.prompt("When does this meeting start?", "15:00")
endTime = await tp.system.prompt("When does this meeting end?", "17:00")
agenda = await tp.system.prompt("What is the agenda for today's meeting?")

thisDate = tp.date.now("dddd, MMMM Do YYYY")
nextDate = tp.date.now("dddd, MMMM Do YYYY", 7)

-%>

**Time**: <% startTime %> - <% endTime %> (<% thisDate %>).

**Agenda**: <% agenda %>

**Attendance**:
- [ ] Katie Arnold (**27620935**)
- [ ] William Fayers (**27378661**)
- [ ] Torin Anderson (**26424071**)
- [ ] Tom Ward (**26479576**)
- [ ] Daniel Morris (**26700885**)
- [ ] Alex Rushworth (**27554937**)
- [ ] Hayden Loyseau (**27635146**)

[[<% lastMeeting %>]] | [[<% nextMeeting %>]] (planned <% nextDate %> at <% startTime %>)

---

- ...