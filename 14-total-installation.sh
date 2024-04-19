user=$(id -u)
scriptName=$(echo $0 | cut -d "." -f1)
timestamp=$(date +%H-%M-%S)
logFile=/tmp/$scriptName-$timestamp.log

red="\e[31m"
green="\e[32m"
yellow="\e[33m"

normal="\e[0m"

if [ $user -ne 0 ]
then 
echo "He is not having the access to run the script, Please get the root access"
else
echo "User is a root user"
fi

validate()
if [ $1 -ne 0 ]
then
echo -e "Installation of the $2 is  $red failure  $normal please check the logs for more details"
else
echo "Installation of the $2 is $green success"
fi

for i in $@
do
 echo "package to install: $i"
    dnf list installed $i &>>$logFile
if [ $? -eq 0 ]
then 
echo "$i already installed in the server. $yellow skipping it"
else
dnf install $i -y &>>$logFile
validate $? $i
fi
done
