|   |
|---|
|## Remove the Computer Virus|
|Your computer might have been infected by a virus! Create a function that finds the viruses in `files` and removes them from your computer.|
|### Examples|
|```<br>remove_virus("PC Files: spotifysetup.exe, virus.exe, dog.jpg")<br>output = "PC Files: spotifysetup.exe, dog.jpg"<br><br>remove_virus("PC Files: antivirus.exe, cat.pdf, lethalmalware.exe, dangerousvirus.exe ")<br>output = "PC Files: antivirus.exe, cat.pdf"<br><br>remove_virus("PC Files: notvirus.exe, funnycat.gif")<br>output = "PC Files: notvirus.exe, funnycat.gif")<br>```|
|### **Notes**|
|- Bad files will contain "virus" or "malware", but "antivirus" and "notvirus" will not be viruses.<br>    <br>- Return `"PC Files: Empty"` if there are no files left on the computer.|