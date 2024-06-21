#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
#BOLD="\e[1m"

echo "Script started executing at: $TIMESTAMP"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2...$R FAILURE $N"
        exit 1
    else
        echo -e "$2...$G SUCCESS $N"
    
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script as root user"
    exit 1 #manually exit if error comes
else
    echo "You are super user."
fi

dnf install git -y &>>$LOGFILE

VALIDATE $? "installing mygit" # $? gives the exit status of previous command


dnf install mysql -y &>>$LOGFILE

VALIDATE $? "installing sql" # $? gives the exit status of previous command

dnf install docker -y &>>$LOGFILE

VALIDATE $? "Installing docker" # $? gives the exit status of previous command