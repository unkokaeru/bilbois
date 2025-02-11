|   |
|---|
|## Rhyme Time|
|Create a function that returns `true` if two lines **rhyme** and `false` otherwise. For the purposes of this exercise, two lines rhyme if the **last word** from each sentence contains the **same vowels**.|
|### Examples|
|```<br>doesRhyme("Sam I am!", "Green eggs and ham.")<br>output = True<br>doesRhyme("Sam I am!", "Green eggs and HAM.")<br>output = True<br># Capitalization and punctuation should not matter.<br>doesRhyme("You're built like a seat", "I bet you like to eat")<br>output = True<br>doesRhyme("You are off to the races", "a splendid day.")<br>output = False<br>doesRhyme("and frequently do?", "you gotta move.")<br>output = False<br>```|
|### **Notes**|
|- Case insensitive.<br>    <br>- Here we are disregarding cases like _"thyme"_ and _"lime"_.<br>    <br>- We are also disregarding cases like _"away"_ and _"today"_ (which technically rhyme, even though they contain different vowels).|