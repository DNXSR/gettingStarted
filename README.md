# Getting Started with ROS
###This is recomended just for users who are begginers to both ROS and Linux environments

In this repository you will find a script that will help you setup your ROS environment. It is the same as running all of the commands that the first two tutorials at ROS wiki recommend.

This script will also ask you if you would like to install two aditional tools which are Terminator that will substitute the original Ubuntu terminal and will let you have multiple tabs in a single window as well as split-display of multiple terminals in the same window, and Sublime Text 2 which is a different text editor that will substitute nano or gedit so you can see your code in a more organized and easier way, as well as to start working on projects.

To run the script you just have to download the current package by running the following command in your terminal (You just have to open a terminal by ```Ctrl+Alt+T``` , copy the part after the '$' and then paste it on the terminal by ```Ctrl+Shift+V```):

```sh
$ git clone https://github.com/DNXSR/gettingStarted.git
```
This will create a new directory where you have initially run the command. Then run:
```sh
$ cd /gettingStarted
$ chmod a+x easyROSinstall.sh
$ ./easyROSinstall.sh
```
The first command will change your current directory to the directory where the script was saved, the second one will give the script the necesary permissions, and then the last one will just run the script.
