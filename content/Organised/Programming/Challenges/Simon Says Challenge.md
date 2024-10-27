|   |
|---|
|## Simon Says|
|Simon asks you to perform operations on a list of numbers that **only he tells you**.|
|You should ignore all other instructions given.|
|Create a function which evaluates a list of commands (written in plain English) if the command begins with **Simon says**. Return the result as an integer.|
|### Examples|
|```<br>simon_says([<br>  "Simon says add 4",<br>  "Simon says add 6",<br>  "Then add 5"<br>])<br>output = 10<br><br>simon_says([<br>  "Susan says add 10",<br>  "Simon says add 3",<br>  "Simon says multiply by 8"<br>])<br>output = 24<br><br>simon_says([<br>  "Firstly, add 4",<br>  "Simeon says subtract 100" # Look at the name closely :)<br>])<br>output = 0<br>```|
|### **Notes**|
|- If no instructions are given by Simon, return `0`.<br>    <br>- For the sake of simplicity, there will be no command for **dividing**.|