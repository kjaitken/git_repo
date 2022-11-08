### README.md for Parking tag analysis                      ![image](https://user-images.githubusercontent.com/13381429/200181080-fdca823f-52f0-433b-b4b4-32e6391cdc60.png |height=48px)

This README.md is for 'finally.sh',  a shell script for parking data csv analysis. The script defines:

  1. the unique types of parking infractions in the city of Toronto, Canada.
  2. the infraction fees and location for a user-selected infraction type (typed in when prompted)
  3. the minimum, maximum and mean of the infraction fees from the csv


##Requirements  

./inputs
./outputs
./scripts

 - Bash shell, including Bash commands grep, awk, cat, cut, echo, uniq, sort and others. 
 - A parking csv file must be selected as it is the first positional parameter which is used for anlaysis. This can found in the parking infraction data from [Toronto parking tags site](https://open.toronto.ca/dataset/parking-tickets/) : 
 or for [2020 data alone](https://ckan0.cf.opendata.inter.prod-toronto.ca/dataset/8c233bc2-1879-44ff-a0e4-9b69a9032c54/resource/0d26a209-6e61-4154-9d70-8a6ad0e2d14d/download/parking-tickets-2020.zip). This shell script is designed around the structure of the [Toronto city parking tags dataset from 2020](https://open.toronto.ca/dataset/parking-tickets/), but will work csv's that contain similar character or numeric values in the same order as the [parking tags dataset](https://ckan0.cf.opendata.inter.prod-toronto.ca/dataset/8c233bc2-1879-44ff-a0e4-9b69a9032c54/resource/0d26a209-6e61-4154-9d70-8a6ad0e2d14d/download/parking-tickets-2020.zip). 


##Installation

To run this program in the same directory as your files of interest, 
type the shell function script along with the csv which is required as a positional parameter in the script. 

  ./finally.sh parking.csv
  
 ## Support and Contributors: 
 
 This script was written by KJ Aitken for the DSI Unix unit, with the additional help found for the [use of awk](https://stackoverflow.com/questions/214363/whats-the-quickest-way-to-get-the-mean-of-a-set-of-numbers-from-the-command-lin)
