#!/bin/bash

echo 'type <CTRL-D> to terminate'
echo -n 'enter your lucky number: '
while read NUMBER
do
    echo "Yeah! lucky number is $NUMBER"
done
