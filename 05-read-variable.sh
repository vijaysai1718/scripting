#!/bin/bash

echo "please enter the username :"

read  Username # here we are not appending anything so username details will be shown inthe console

echo "please enter the password:"

read -s Password  #-s it will not shows the values entered by the user 

echo "user as entred username as $Username and password as $Password"
