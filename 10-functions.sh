#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    echo "exit status:$1"
    echo "what are you doing:$2"
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

