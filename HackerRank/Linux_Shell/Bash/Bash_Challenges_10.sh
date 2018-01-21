### Compute the Average -  https://www.hackerrank.com/challenges/bash-tutorials---compute-the-average 

# Given N integers, compute their average correct to three decimal places.

# Input Format 
# The first line contains an integer, . 
# N lines follow, each containing a single integer.

# Output Format 
# Display the average of the  integers, rounded off to three decimal places.

# Input Constraints 
 
# ( refers to elements of the list of integers for which the average is to be computed)

read n

sum=0

for i in $(seq 1 $n); do
    read value
    sum=$(( $sum + $value ))
done

echo "$sum / $n" | bc -l | awk '{printf("%0.3f\n", $1 )}' 
