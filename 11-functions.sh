#!/bin/bash

userid=$(id -u)

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

dnf install git -y 

validate $? "Installation of the github"

dnf install docker -y 

validate $? "Installation of the github"
