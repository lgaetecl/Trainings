### Looping and Skipping - https://www.hackerrank.com/challenges/bash-tutorials---looping-and-skipping

#for loops in Bash can be used in several ways: 
#- iterating between two integers,  and  
#- iterating between two integers,  and , and incrementing by  each time 
#- iterating through the elements of an array, etc.

#Your task is to use for loops to display only odd natural numbers from  to .


for i in {1..99..2}
do
    echo $i
done