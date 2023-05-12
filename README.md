# MX-CoreRed_8ToDo
This is a widget plug-in made for Conky for 8 CPU's and has a To Do List

# Special Features
This widget has several special features including: 
- A To Do List
- Weather for your ip address
- Debian Hints
- Displays up to 8 CPU percentages


![alt text](https://github.com/AshersPrograms/MX-CoreRed_8ToDo/blob/main/conkyrc2coreRed_8ToDo.png?raw=true)

# Installation Instructions:
-Download and unzip the folder to ~/.conky/

-Open a terminal and type:

--chmod 0755 ~/.conky/MX-CoreRed_8ToDo/weather.sh

## Additional Shortcuts
-Create a Desktop Shortcut to ~/.conky/MX-CoreRed_8ToDo/todo.txt

-or type:
```bash
ln -s ~/.conky/MX-CoreRed_8ToDo/todo.txt ~/Desktop/
```
## Pre-specify your zip code
-This is not necessary but if you want the program to run a little faster and more accurate. Pre-specify your zip code.

-Open a terminal and type:
```bash
sed -i '186s/.*/$color${execpi 300 ~\/.conky\/MX-CoreRed_8ToDo\/weather.sh 12345}/' ~/.conky/MX-CoreRed_8ToDo/conkyrc2coreRed_8ToDo
```
**replace 12345 with your zip code
