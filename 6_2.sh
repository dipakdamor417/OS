#!/bin/bash



echo "Welcome to the file manager application"

echo "Please choose one of the following option:"
echo "1.copy a file"
echo "2.edit a file"
echo "3.rename a file"
echo "4.delete a file"

read  choice

if [ $choice -eq 1 ];
then

echo "Please enter a filename you want to copy:"
read filename
echo "please enter a destination file"
read destfilename
 cp $filename $destfilename
 echo "---Operation Done---"
 
elif [ $choice -eq 2 ] ;
then 
  echo "Enter filename you want to edit:"
  read efile
  vi $efile
elif [ $choice -eq 3 ];
then
   echo "Please enter a filename  you want to reanme:"
     read rfile
    echo "name you want to give"
   read nfile
   mv $rfile $nfile
   echo "---Operation Done---"
   
elif [ $choice -eq 4 ];
then
   echo "Please enter a filename  you want to delete:"
read dfile
 rm $dfile
 echo "---Operation Done---"
 
 else
     echo "Please enter correct choice"
 fi
