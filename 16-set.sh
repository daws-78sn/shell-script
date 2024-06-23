#!/bin.bash

set -e

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script as root user"
    exit 1 #manually exit if error comes
else
    echo "You are super user."
fi

dnf install gitt -y
dnf install mysql -y
echo "is script proceeding"


