#!/bin/bash


echo "--------------------MGVCL-------------------"

echo "Enter Your name:"
read name 
echo "Enter your consumer number"
read cnum
echo "Enter your mobile number"
read callnum

echo "Enter the number of units consumed:" 
read units

if [ $units -le 100 ] 
then 
    charge=`echo $units \* 1 | bc `
elif [ $units -le 200 ] 
then 
    first_100=`echo 100 \* 1 | bc `
    rem_units=`echo $units - 100 | bc` 
    charge=`echo $first_100 + $rem_units \* 2 | bc `

else 
    first_100=`echo 100 \* 1 | bc `
    next_100=`echo 100 \* 2 | bc `
    rem_units=`echo $units - 200 | bc` 
    charge=`echo $first_100 + $next_100 + $rem_units \* 3 | bc `

fi 


echo 
echo "--------------Generating Bill------------"
echo
echo "----------------BILL---------------------"
echo "Name:                                $name"
echo "Consumer NUmber:                     $cnum"
echo "Call Number :                        $callnum"
echo "The total electricity bill is Rs.    $charge"
