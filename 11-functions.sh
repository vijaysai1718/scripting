#!/bin/bash

userid=$(id -u)
Timestamp=$(date +%F-%H-%M-%S)
ScriptName=$(echo $0 | cut -d "." -f1)
LogFile=/tmp/$timestamp/$scriptName

if [ $userid -ne 0 ]
then 
echo "user is not root user he cant install the software"
exit 1
else
echo "user is a super user he can install the software what he want"
fi

validate()
if [ $1 ne 0 ]
then 
echo "$2 is failed please check the logs"
else
echo "$2 is success"
fi

dnf install git -y &>>LogFile

validate $? "Installation of the github"

dnf install docker -y &>>LogFile

validate $? "Installation of the docker"
