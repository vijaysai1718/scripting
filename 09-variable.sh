#!/bin/bash

#conditions partice 
Number=$1

if [ $Number -gt 100 ]
then 
echo "entered $Number  is greater than 100"
else
echo "entered $Number is lesser than 100"
fi

#-gt, -lt, -eq, -ge, -le