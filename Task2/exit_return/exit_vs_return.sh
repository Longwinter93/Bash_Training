#!/bin/bash

returnfunction()
{
    echo "this is return function"
    return 1
}

exitfunction()
{
    echo "this is exit function"
    exit 1  #it casues the script to end
}

returnfunction
echo "We see it because it is after performing the return function"
exitfunction
echo "We do not see it because it is after performing the exit function"
#Running on the terminal