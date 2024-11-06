|   |
|---|
|Given a sentence containing few instances of `"Ctrl + C"` and `"Ctrl + V"`, return the sentence after those keyboard shortcuts have been applied!|
|- `"Ctrl + C"` will copy **all text** behind it.<br>    <br>-  `"Ctrl + V"` will do nothing if there is no `"Ctrl + C"` before it.<br>    <br>- A `"Ctrl + C"` which follows another `"Ctrl + C"` will overwrite what it copies.|
|### Examples|
|```<br>#Example 1<br>keyboardShortcut("the egg and Ctrl + C Ctrl + V the spoon") output = "the egg and the egg and the spoon"<br><br>#Example 2<br>keyboardShortcut("WARNING Ctrl + V Ctrl + C Ctrl + V")<br>output=  "WARNING WARNING"<br><br>#Example 3<br>keyboardShortcut("The Ctrl + C Ctrl + V Town Ctrl + C Ctrl + V")<br>output = "The The Town The The Town"<br>```|
|### Notes|
|- Keyboard shortcut commands will appear like normal words in a sentence but shouldn't be copied themselves (see example #2).<br>    <br>- Pasting should add a space between words.|