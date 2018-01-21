### The World of Numbers - https://www.hackerrank.com/challenges/bash-tutorials---the-world-of-numbers

# Given two integers,  and , find their sum, difference, product, and quotient.

# Input Format 
# Two lines containing one integer each ( and , respectively).

# Input Constraints 
 

# Output Format 
# Four lines containing the sum (), difference (), product (), and quotient (), respectively. 
# (While computing the quotient, print only the integer part.)

read x
read y 

echo $(expr $x + $y)
echo $(expr $x - $y)
echo $(expr $x \* $y)
echo $(expr $x / $y)