#!/bin/bash

echo "Enter last number of series:"
read num
fact=1
sum=0
for (( i=1; i<=$num; i++ ))
do
    fact=$[ $fact * i ] 
    sum=$(echo $sum + $(echo $i/$fact | bc -l))
    
done

echo 
echo $sum 
total=0
total=$(echo "$total + $sum " | bc )
echo
echo "Total sum:"
echo $total
