#!/bin/bash
set -e 
trap 'errorhandle ${LINENO} $BASH_COMMAND' ERR

Red="\e[31m"
Green="\e[32m"
Normal="\e[0m"
Yellow="\e[33m"



errorhandle()
{
    echo -e "error at the line number $Red :$1  $Normal and error command is $Red:$2 $Normal file name : $Green $0 $Normal"
}

#check first source directory exists or not 

SoureDirectory=/e/DevopsAws/Git

if [ -d $SoureDirectory ]
then
echo "Source file with this name $SoureDirectory is available"
else
echo "please check whether source directory is available"
fi



#"thats not okay"