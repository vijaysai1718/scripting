#!/bin/bash
set -e 
trap 'errorhandle ${lLINENO} $BASH_COMMAND' ERR

Red="\e[31m"
Green="\e[32m"
Normal="\e[0m"



errorhandle()
{
    echo -e "error at the line number $Red :$1  $Normal and error command is $Red:$2 $Normal;"
}

git sdsddss