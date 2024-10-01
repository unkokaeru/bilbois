|   |
|---|
|## Convenience Store|
|Given **a total due** and **an array** representing **the amount of change in your pocket**, determine **whether or not you are able to pay for the item.**|
|Change will always be represented in the following order: **quarters, dimes, nickels, pennies.**|
|Example: `changeEnough([25, 20, 5, 0], 4.25)` return `true` because:|
|25 quarters, 20 dimes, 5 nickels and 0 pennies gives you 6.25 + 2 + .25 + 0 = 8.50.|
|This means you can afford the item, so return true.|
|### Examples|
|```<br>changeEnough([2, 100, 0, 0], 14.11) ➞ false<br><br>changeEnough([0, 0, 20, 5], 0.75) ➞ true<br><br>changeEnough([30, 40, 20, 5], 12.55) ➞ true<br><br>changeEnough([10, 0, 0, 50], 3.85) ➞ false<br><br>changeEnough([1, 0, 5, 219], 19.99) ➞ false<br>```|
|### **Notes**|
|- **quarter** = 25 cents / $0.25<br>    <br>- **dime**= 10 cents / $0.10<br>    <br>- **nickel** = 5 cents / $0.05<br>    <br>- **penny** = 1 cent / $0.01|