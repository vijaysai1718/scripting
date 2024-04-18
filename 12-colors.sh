#!/bin/bash

userid=$(id -u)
Timestamp=$(date +%H-%M-%S)
scriptName=$(echo $0 | cut -d "." -f1)
LogFile=/tmp/$scriptName-$Timestamp.log

Red="\e[31m"
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
if [ $1 -ne 0 ]
then 
echo -e "$2 is  $Red failed $Normal please check the logs"
else
echo -e "$2 is $Green success $Normal"
fi

dnf install github -y &>>$LogFile

validate $? "Installation of the github"

dnf install docker -y &>>$LogFile

validate $? "Installation of the docker"
