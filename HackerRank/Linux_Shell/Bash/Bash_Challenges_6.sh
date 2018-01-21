### Comparing Numbers - https://www.hackerrank.com/challenges/bash-tutorials---comparing-numbers

# Given two integers,  and , identify whether  or  or .

# Comparisons in a shell script may either be accomplished using regular operators (such as < or >) 
# or using (-lt, -gt, -eq, i.e. less than, greater than, equal to) for POSIX shells. 
# This discussion on stack overflow contains useful information on this topic.

# Input Format 
# Two lines containing one integer each ( and , respectively).

# Output Format 
# Exactly one of the following lines: 
# - X is less than Y 
# - X is greater than Y 
# - X is equal to Y

read x
read y

if [ $x -lt $y ] 
then
    echo "X is less than Y"
elif [ $x -gt $y ] 
then
    echo "X is greater than Y"
else
    echo "X is equal to Y"
fi