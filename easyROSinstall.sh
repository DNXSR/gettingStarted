#!/bin/bash
clear
echo "Hello, this script was made by Alvaro Bravo from UPAEP robotics & control lab to make ROS install and some other tools that will help in their learning process of ROS and the Ubuntu environment easier for the newcomers. Feel free to use it. I hope it is helpful for your further learning!"
echo ""
echo "If any problem arises regarding the script I can be contacted at alvaroubravo@gmail.com"
echo ""
read -p "ROS is a collection of tools, libraries, and conventions that aim to simplify the task of creating a robot. It was built to encourage collaborative robotics software development. This way you can access to knowledge provided by experts on a given subject and use it for any given problem your robot might need to solve. If you decide to continue, this script will install the full ROS indigo which is recommended if the version of Ubuntu you are currently working on is Ubuntu Trusty Tahr (14.04), if you have any other version we recommend you to stop right here, are you ready to begin the ROS installation? It may take some time to finish (Y/n)  " Yn
clear
if [ $Yn = Y ]
	then sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
	read -p "Would you also like to install Sublime Text 2? This will help you by making any code easier to read. (Y/n)  " sublime
	if [ $sublime = Y ]
		then read -p "Would you also like to make it your default editor?" default
		else echo ""
	fi
	clear
	read -p "Would you also like to install Terminator? This will substitute the current terminal with a friendlier one that will let you have multiple tabs and terminals open on the same window. (Y/n)  " terminator
	if [ $sublime = Y ]
		then sudo add-apt-repository ppa:webupd8team/sublime-text-2
		else echo ""
	fi
	clear
	echo "Ok, now the install will begin. You might be asked your password one or more times in the process, as well as be asked to answer Yes or No to some questions, go get yourself some coffee or something, this might take a while."
	sudo apt-key adv --keyserver hkp://pool.sks-keyservers.net --recv-key 0xB01FA116
	sudo apt-get update
	sudo apt-get install ros-indigo-desktop-full
	sudo rosdep init
	rosdep update
	echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
	source ~/.bashrc
	sudo apt-get install python-rosinstall
	if [ $sublime = Y ]
		then sudo apt-get install sublime-text
		if [ $default = Y ]
			then sudo sed -i 's/gedit.desktop/sublime-text-2.desktop/g' /etc/gnome/defaults.list
			else echo ""
		fi
		else echo ""
	fi
	if [ $terminator = Y ]
		sudo apt-get install Terminator
		else echo ""
	fi
	ws="catkin_ws"
	clear
	echo "Everything is installed now, lets start creating a ROS environment so you can work on it right away."
	read -p "ROS wiki uses the name catkin_ws as default for all the tutorials, I would recommend to keep it that way so you don't get confused in the learning process. Would you like to change this? (Y/n)  " Yn
	if [ $Yn = Y ]
		then read -p "How would you like to rename it?" ws
		else echo ""
	fi
	cd
	mkdir -p ~/$ws/src
	cd ~/$ws/src
	catkin_init_workspace
	echo "source ~/$ws/devel/setup.bash" >> ~/.bashrc
	clear
	echo "The setup has finished! You must see now a new directory under your home folder named /$ws, this is were your ROS programs will need to be in order for catkin to find them. You are now ready to create your first ROS package!"
	else echo "You can always come back if you change your mind!"
fi
