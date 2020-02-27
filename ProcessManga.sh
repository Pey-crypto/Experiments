
!/bin/sh
rm process.txt
echo "============================="

echo "Procces Killer"
echo "============================="

echo "Running the cmd , edit lines if required "
echo ""
echo "File creation"
echo ""
ps -eo %cpu,%mem,pid,command | sort -nrk 1 | head  >> process.txt
cat process.txt
echo " Enter the Threshold "
read n4
while IFS= read -r line  
do 
    a=`echo $line | awk '{print $1}'`
    b=`echo $line | awk '{print $3}'`
    c=`echo $line | awk '{print $4}'`
    if [ $a > $n4 ]
     then 
        echo "Command :" $c
        echo "Process id :"$b
        kill -9 $b
        sleep 2s
    fi
done < process.txt