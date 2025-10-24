#!/bin/bash

# This script calculates simple interest

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    # Use bc for floating point arithmetic
    interest=$(echo "$principal * $rate * $time / 100" | bc)

    echo "The simple interest is: $interest"
}

# Prompt user for input
echo "Enter the principal amount:"
read p

echo "Enter the rate of interest (per year):"
read r

echo "Enter the time period (in years):"
read t

# Call the function
calculate_simple_interest $p $r $t
