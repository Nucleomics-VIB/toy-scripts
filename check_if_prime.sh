#!/bin/bash

# Array of numbers to check
numbers=(2 3 5 7 11 13 17 19 23 29 31 37 41 43 44 47)

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

# Check each number in the array
for num in "${numbers[@]}"; do
    if is_prime $num; then
        echo "$num is prime"
    else
        echo "$num is not prime"
    fi
done
