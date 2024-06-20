#!/bin/bash

echo "All variables: $@"
echo "Number of varaibles passed: $#"
echo "Script name:$0"
echo "Current working directory: $PWD"
echo "Parent process ID: $PPID"
echo "Process ID: $$"
echo "Random number: $RANDOM"
echo "Exit status of last command: $?"
echo "Home directory of current user: $HOME"
echo "Which is user is running this script: $USER"
echo "Hostname: $HOSTNAME"