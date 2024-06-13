#!/bin/bash

# Read the limit from the user
echo "Enter the limit:"
read limit

# Initialize the first two Fibonacci numbers
a=0
b=1

# Print the first Fibonacci number
echo "The Fibonacci sequence up to $limit is: "
echo $a

# Calculate and print the remaining Fibonacci numbers
while true
do
    fib=$((a + b))
    if (( fib > limit )); then
        break
    fi
    echo $fib
    a=$b
    b=$fib
done