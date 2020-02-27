#!/bin/sh

echo "Removing Previous trace files"
rm  Process.txt
rm Process2.txt
rm  Process
sleep 2s
echo "Done"
sleep 0.5s
echo "==================="
echo ""
echo "Process Killer"
echo ""
echo "==================="


ps -eo pid,%cpu,%mem,args> Process.txt
sleep 2s
n4=` cat Process.txt|wc -l `

if [ $n4 -lt "1" ]
then 
    echo "File creation has failed"
    echo "Fatal Error"
    exit
else
    echo "File Created"
fi 
sort -r Process.txt >> Process2.txt
echo ""
cat Process2.txt > Process
echo "Enter the Threshold"
read n2
awk '{print $1}' Process 
awk '{print $2}' Process








