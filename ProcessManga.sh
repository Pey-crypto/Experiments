#!/bin/sh
rm process.txt
echo "============================="
sleep 2s
echo "Procces Killer"
echo "============================="
sleep 2s
echo "Running the cmd , edit lines if required "
echo ""
echo "File creation"
echo ""
##echo -ne '#####                     (33%)\r'
##sleep 1
##echo -ne '#############             (66%)\r'
##sleep 1
##echo -ne '#######################   (100%)\r'
##echo -ne '\n'
ps -eo %cpu,%mem,pid,command | sort -r | head  >> process.txt
sleep 2s
echo " Enter the Threshold "
read n4
while IFS= read -r line  
do 
    a= echo $line | awk '{print $1}'
    b= echo $line | awk '{print $3}'
    if [ $a > $n4 ]
     then 
        echo "h"$a
        echo "l"$b
        kill $b
    fi
done < process.txt