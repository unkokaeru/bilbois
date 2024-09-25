|   |
|---|
|## Video Length in Seconds|
|You are given the length of a video in minutes. The format is **mm:ss** (ex: `"02:54"`).|
|Create a function that takes the _video length_ and return it in **seconds**.|
|### Examples|
|```<br>minutesToSeconds("01:00") = 60<br><br>minutesToSeconds("13:56") = 836<br><br>minutesToSeconds("10:60") = -1<br><br>minuteToSeconds("121:49") = 7309<br>```|
|### Notes|
|- The video length is given as a string.<br>    <br>- If the number of seconds is **60 or over**, return `-1` (see example #3).<br>    <br>- You may get a number of minutes over 99 (e.g. `"121:49"` is perfectly **valid**).|