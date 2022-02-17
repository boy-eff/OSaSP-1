#!/bin/bash
#fileName = $1
#catalogPath = $2
#extension = $3
if [[ $# -ne 3 ]]; 
then
echo "This command must include 3 parameters" >&2
echo "1 - Name of the file, where result will be stored" >&2
echo "2 - Catalog path for searching" >&2
echo "3 - Extension of the files" >&2
elif ! [[ -d $2 ]]; then
echo  "$2 is invalid directory" >&2
else
echo -n > $1
for file in $(find $2 -maxdepth 1 -type f -name "*.$3")
do
echo "$file" >> $1
done
sort -o $1 $1
fi
