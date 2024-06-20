#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script as root user"
    exit 1 #manually exit if error comes
else
    echo "You are super user."
fi

dnf install mysqll -y

if [ $? -ne 0 ]
then
    echo "Installation of mysql... FAILURE"
    exit 1
fi

echo "is script proceeding?"
#read -p "Press enter to continue..."
