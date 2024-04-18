#!/bin/bash
user = $(id -u)

if [ $user -ne 0]
then 
echo "Please get the super user access to perform this installation on software"
exit 1
else
echo "you are having the super acess to install the software"

dnf install mysql -y

if [ $? -ne 0]
then
echo "installation failed due to some issues, please check the logs"
exit1
else
echo "Mysql installation was successful "
fi

dnf install github -y

if [ $? -ne 0]
then
echo "installation failed due to some issues, please check the logs"
exit1
else
echo "github installation was successful "
fi

