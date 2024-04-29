#!/bin/bash
set -e 
trap 'errorhandle ${LINENO} $BASH_COMMAND' ERR

Red="\e[31m"
Green="\e[32m"
Normal="\e[0m"



errorhandle()
{
    echo -e "error at the line number $Red :$1  $Normal and error command is $Red:$2 $Normal file name : $Green $0 $Normal"
}

#check first source directory exists or not 

SoureDirectory="/e/Devops Aws"

if [ $? -ne 0 ]
then
echo "Source file with this name $SoureDirectory is available"
else
echo "please check whether source directory is avilable"
fi


