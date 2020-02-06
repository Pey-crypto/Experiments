#!/bin/sh

echo "======================="
echo ""
echo "Hello there this script runs a menu driven calculator"
echo ""
echo "======================="

echo "Enter your First integer"
read n1

echo "Enter your Second integer"
read n2

echo "These are the values"
echo "First value $n1"
echo "Second value $n2"


i="y"

while [ $i = "y" ]
do 
    echo "The value $i"
    echo "These are the available operations"
    echo "Addition = (+) "
    echo "Subtraction = (-)"
    echo "Division = (\)"
    echo "Modulus = (%)"
    echo "Multiplication = (*)"
    
    read n3
    case $n3 in
    
    +) n4=`expr $n1 + $n2`;;
    -) n4=`expr $n1 - $n2`;;
    /) n4=`expr $n1 / $n2`;;
    %) n4=`expr $n1 % $n2`;;
    *) n4=`expr $n1 \* $n2`;;
    
    esac
    echo ""
    echo "The result is $n4"
    echo ""
    echo "Do you want the loop run again"
    read i
    echo "The value $i"
    done 


