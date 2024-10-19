|   |
|---|
|## Ping Pong!|
|A game of table tennis almost always sounds like _Ping!_ followed by _Pong!_|
|You know that Player 2 won if you hear _Pong!_ as the last sound (since Player 1 didn't return the ball back).|
|Given an array of _Ping!_, create a function that inserts _Pong!_ in between each element. Also:|
|- If `win` equals `true`, end the list with _Pong!_<br>    <br>- If `win` equals `false`, end the list with _Ping!_|
|### Examples|
|```<br>#Example 1<br>pingPong(["Ping!"], True)<br>output = ["Ping!", "Pong!"]<br><br>#Example 2<br>pingPong(["Ping!", "Ping!"], False)<br>output = ["Ping!", "Pong!", "Ping!"]<br><br>#Example 3<br>pingPong(["Ping!", "Ping!", "Ping!"], True)<br>output = ["Ping!", "Pong!", "Ping!", "Pong!", "Ping!", "Pong!"]<br>```|
|### **Notes**|
|- Player 1 serves the ball and makes _Ping!_.<br>    <br>- Return an array of strings.|