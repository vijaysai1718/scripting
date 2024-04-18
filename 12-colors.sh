#!/bin/bash

userid=$(id -u)
Timestamp=$(date +%H-%M-%S)
scriptName=$(echo $0 | cut -d "." -f1)
LogFile=/tmp/$scriptName-$Timestamp.log

Red="\e[31m"  #red color 
Green="\e[32m"
Normal="\e[0m"

if [ $userid -ne 0 ]
then 
echo "user is not root user he cant install the software"
exit 1
else
echo "user is a super user he can install the software what he want"
fi

validate()
if [ $1 -ne 0 ]  #$1 means first arugment  $2 is the second arugment 
then 
# we have to enable the color so we are appening with -e and after that we are giving normal color to everything for that reason normal is append at the last 
echo -e "$2 is  $Red failed $Normal please check the logs"
else
echo -e "$2 is $Green success $Normal"
fi
# &>> means it will store  the both error logs and success logs into the file 
# 1>> means it will only  append the success logs to the file
# 2>> means it will only  append the error logs to the file

dnf install github -y &>>$LogFile 

# $? this means it will give the pervious command status if 0 means it was success other wise failure
# vaiidate is the function name we are calling the function with the 2 arugments.

validate $? "Installation of the github"

dnf install docker -y &>>$LogFile

validate $? "Installation of the docker"
