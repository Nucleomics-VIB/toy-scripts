#!/bin/bash

# Read the limit from the user
echo "Enter the limit:"
read limit

echo "Prime numbers up to $limit are:"

# Function to check if a number is prime
is_prime() {
    local num=$1
    local sqrtnum
    sqrtnum=$(echo "sqrt($num)" | bc)
    for (( div=2; div<=sqrtnum; div++ )); do
        if (( num % div == 0 )); then
            return 1
        fi
    done
    return 0
}

# Check all numbers up to the limit
for (( num=2; num<=limit; num++ )); do
    if is_prime $num; then
        echo $num
    fi
done