#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2...FAILURE"
        exit 1
    else
        echo "$2...SUCCESS"
    
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script as root user"
    exit 1 #manually exit if error comes
else
    echo "You are super user."
fi

dnf install git -y

VALIDATE $? "installing mysql" # $? gives the exit status of previous command


dnf install mysql -y

VALIDATE $? "installing mygit" # $? gives the exit status of previous command

