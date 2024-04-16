#!/bin/bash

echo "all the variable passed to this files are $@"
echo "number of the varaible passed $#"
echo "name of the script is $0"
echo "This user is $USER running the script"
echo "current working directory $PWD"
echo "host where the script is running $HOST"
echo "home directory if the user $HOME"
echo "process id for this script is $$"
sleep 60 &
echo "process id for the back end : $!"