### More on Conditionals - https://www.hackerrank.com/challenges/bash-tutorials---more-on-conditionals

# if statements in Bash are often used in four important ways:

# 1. if...then...fi statements
# 2. if...then...fi...else statements  
# 3. if..elif..else..fi  
# 4. if..then..else..if..then..fi..fi.. (Nested Conditionals)
# The Recommended Resources section may give you a clearer idea of conditionals in Bash.

# Your task: 
# Given three integers (, , and ) representing the three sides of a triangle, identify whether the triangle is Scalene, Isosceles, or Equilateral.

# Input Format 
# Three integers, each on a new line.

# Input Constraints 
 
# Sum of any two sides will be greater than the third.

# Output Format 
# One word: either "SCALENE" or "EQUILATERAL" or "ISOSCELES" (quotation marks excluded).

read x
read y
read z

if [ $x -eq $y -a $x -eq $z ]
then
    echo "EQUILATERAL";
elif [ $x -ne $y -a $x -ne $z -a $y -ne $z ]
then
    echo "SCALENE";
else 
    echo "ISOSCELES";
fi