#!/bin/bash

# 1. read in parking tickets data as a positional parameter on command line while running script: 
# 
# touch finally.sh
# chmod 775 finally.sh
# ./finally.sh Parking_Tags_Data_2020.000.csv

# #2.a:  by adding -r (reverse), column headers are on top. another option is to add colnames as in 2c, but would be redundant here. 
echo "Unique parking infraction types listed in parkingtypes.csv and printed here:"
		cut -d, -f4 $1 |sort -r |uniq > parkingtypes.csv   
		cat parkingtypes.csv 
		echo " "

# 2.c: the user chooses the infraction type by writing in a whole or part string of the infraction type
# with "grepvar" read in as a variable to be searched for in subsequent lines:

echo "Enter the parking ticket infraction type - select from list above (#2.a):"

if [[ -f $1 ]]; 
then
		read grepvar
		echo "Infraction_description, Set_fine_amount, Location2" > parkgrep.csv
		cat $1 | cut -d, -f4 -f5 -f8 |sort |grep -iF "$grepvar" >> parkgrep.csv
		echo "parkgrep.csv contains search results that are also printed here:"
		cat parkgrep.csv
		echo " "
fi

# 2.b prints the mean, max and min of all infractions (pooled groups). created a function for the min max and mean: 


cat $1 |cut -d, -f5| tail -n +2|sort -n > feefile.txt #this will sort according to fee magnitude (column f5) and remove the header

MIN=$(head -n +1 feefile.txt)  # because feefile has already been sorted and the top of the head is selected, the min will be on top
MAX=$(tail -n 1 feefile.txt)   # because feefile has already been sorted and the tail bottom is selected, the max will be on bottom

echo The Maximum infraction fee is: $ $MAX
echo The Minimum infraction fee is: $ $MIN


#MEAN: help with awk was found in: ##https://stackoverflow.com/questions/214363/whats-the-quickest-way-to-get-the-mean-of-a-set-of-numbers-from-the-command-lin
# #This accumulates the sum in n, then divides by the number of items (NR = Number of Records).
	
	echo "The Mean infraction fee is: $" $(awk '{n += $1};END {print n/NR}' feefile.txt)	 # sum (n) /ordinal number  (NR) of feefile

