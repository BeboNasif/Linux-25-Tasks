#!/bin/bash
echo -n "Enter a starting number:  "
read num

while (( num > 0 )); 
do
echo "$num"
sleep 1
(( num-- ))
done

echo "Time's up!"
