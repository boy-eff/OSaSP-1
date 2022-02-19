#!/bin/bash
#initFile = $1
#exeFile = $2
if [[ $# -ne 2 ]]; 
then
{
echo "This command must include 2 parameters"
echo "1 - Name of the initial file"
echo "2 - Name of the executable file" 
} >&2
elif ! [[ -f $1 ]]; then
echo "$1 is not a valid file" >&2
else gcc $1 -o $2 && ./$2;
fi
