#!/bin/bash


# #finalfunctions for 2a and 2b. 2c was a little tricky to make into a function, so I left it as is. 

# #2.a:  by adding -r (reverse), column headers are on top. another option is to add colnames as in 2c, but would be redundant here. 

funct2a() {	cut -d, -f4 $@ |sort -r |uniq > parkingtypes.csv;   
					cat parkingtypes.csv 
					return
					}

# #this will sort according to fee magnitude (column f5) and remove the header. 
# # because feefile has already been sorted when the top of the head is selected, the min will be on top
# # because feefile has already been sorted when the tail bottom is selected, the max will be on bottom
# # for the mean: sum (n) /ordinal number  (NR) of feefile. This awk script was adapted from : 
##https://stackoverflow.com/questions/214363/whats-the-quickest-way-to-get-the-mean-of-a-set-of-numbers-from-the-command-lin

funct2b () {  cat $@ |cut -d, -f5| tail -n +2|sort > feefile.txt 
 
		echo The Maximum infraction fee is: $ $(head -n +1 feefile.txt) 
		echo The Minimum infraction fee is: $ $(tail -n 1 feefile.txt) 

		echo "The Mean infraction fee is: $" $(awk '{n += $1};END {print n/NR}' feefile.txt)	 

				return	
				}


#program starts here


echo "Unique parking infraction types listed in parkingtypes.csv and printed here:"
funct2a $1  
echo " "

# 2.c: the user chooses the infraction type by writing in a whole or part string of the infraction type
# with "grepvar" read in as a variable to be searched for in subsequent lines:

if [[ -f $1 ]]; 
then
		echo "Type the infraction type you wish to see in more detail (please see list above for possible infractions):"
		read grepvar
		echo "Infraction_description, Set_fine_amount, Location2" > parkgrep.csv
		cat $1 | cut -d, -f4 -f5 -f8 |sort |grep -iF "$grepvar" >> parkgrep.csv
		echo "parkgrep.csv contains search results that are also printed here:"
		cat parkgrep.csv
		echo " "
fi


echo "Maximum, minimum and mean of the total parking infration fees"
funct2b $1
