#!/bin/bash

MOVIES=("RRR" "DJTILLU" "MURARI")
    # size of above array is 3
    # index starts with 0 , 0 1 2 
    # list always starts with 0

echo "First movie is: ${MOVIES[0]}"
echo "Second movie is: ${MOVIES[1]}"
echo "Third movie is: ${MOVIES[2]}"

    # if we need all at time we can use 
    echo "All movies are: ${MOVIES[@]}"