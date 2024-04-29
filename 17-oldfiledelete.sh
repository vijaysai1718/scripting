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

SoureDirectory=/e/DevopsAws

if [ -d $SoureDirectory ]
then
echo "Source file with this name $SoureDirectory is available"
else
echo "please check whether source directory is available"
fi

Files=$(find $SoureDirectory -name "*.log" -mtime +14)

#using while loop
while IFS= read -s dude
do 
echo "Deleting  log files which are  older than 14 days: $dude"
rm -rf $dude
done <<< $Files
<<comment
#"thats not okay"
for line in {$Files}
do
echo "Deleting the log files which are  older than 14 days: $line"
rm -rf $line
done
comment

