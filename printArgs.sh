#!/bin/bash
echo -n > args.txt
for var in $*
do
echo -n "$var "
echo -n "$var " >> args.txt
done
echo ""
