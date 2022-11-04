README.md for 'finfunc.sh',  a shell script for parking data csv analysis. 
(This is a part of the DSI_GIT_Assignment.)

This shell script analyses the parking-tags dataset from the Toronto city parking tags dataset from 2020 (http... ) 

This script works with any other csv's just modify the column number (f) of your interest. 

The script also defines
  1. the unique type of parking infractions in the city of Toronto. 
  2. the infraction fees and location for a user-selected infraction type (typed in when prompted)
  3. the minimum, maximum and mean of the infraction fees from the csv

Requirements  

 - Bash shell, including Bash commands grep, awk, cat, cut, echo, uniq, sort and others. 
 - parking data from Toronto parking tags site: https://open.toronto.ca/dataset/parking-tickets/
 or for 2020 data alone:  https://ckan0.cf.opendata.inter.prod-toronto.ca/dataset/8c233bc2-1879-44ff-a0e4-9b69a9032c54/resource/0d26a209-6e61-4154-9d70-8a6ad0e2d14d/download/parking-tickets-2020.zip

Installation

To run this program in the same directory as your files of interest, 
type the shell function script with the csv that you are going to study. 

  ./finfunc.sh parking.csv
  
 The parking csv file must be selected as it is the first positional parameter which is used for anlaysis. 
