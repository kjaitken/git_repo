# README.md for Parking tag analysis          <img mg align="right" src="https://user-images.githubusercontent.com/13381429/200181080-fdca823f-52f0-433b-b4b4-32e6391cdc60.png" width=20% height=20%>

This README.md is for the [finally.sh](https://github.com/kjaitken/git_repo/blob/main/finally.sh) shell script which analyses parking infraction data in the city of Toronto, Canada. 

## Requirements  

### ./scripts
[finally.sh](https://github.com/kjaitken/git_repo/blob/main/finally.sh) shell script

### ./inputs 
A csv must be available as the first positional parameter. This parking csv file must be placed in the same working directory as the shell script, or the path to the csv must be defined in order for the csv to be recognized. This means that the positional parameter is listed after one space after the shell script.  
Parking infraction data from [Toronto parking tags site](https://open.toronto.ca/dataset/parking-tickets/) includes many years worth of data including the csv's withing [2020 parking tags data](https://ckan0.cf.opendata.inter.prod-toronto.ca/dataset/8c233bc2-1879-44ff-a0e4-9b69a9032c54/resource/0d26a209-6e61-4154-9d7-8a6ad0e2d14d/download/parking-tickets-2020.zip). [finally.sh](https://github.com/kjaitken/git_repo/blob/main/finally.sh) is designed around the structure of the [Toronto city parking tags data](https://open.toronto.ca/dataset/parking-tickets/), but will work with csv's that contain similar character or numeric values in the same order as the [2020 parking tags data](https://ckan0.cf.opendata.inter.prod-toronto.ca/dataset/8c233bc2-1879-44ff-a0e4-9b69a9032c54/resource/0d26a209-6e61-4154-9d70-8a6ad0e2d14d/download/parking-tickets-2020.zip). 

## Installation

To run this program on Unix shell (Terminal on a Mac) in the same directory as your files of interest, upload the shell script to your working directory with the parking.csv.
Add the shell script and ensure permissions by typing : 
    touch finally.sh
    chmod 775 finally.sh
To run, now type the shell function script along with the parking csv (see ./inputs) which is required as a positional parameter in the script. This will read in parking tickets data as a positional parameter on command line while running the script: 
    
    ./finally.sh Parking_Tags_Data_2020.000.csv
  
A prompt will appear after the first analysis, requesting the user to type in a type of parking infraction for which more information on infraction fees and street location is desired. 
Everything else will just run!

## ./outputs
  1. The unique types of parking infractions in the csv data, printed out and saved in the working directory as "parkingtypes.csv"
  2. the infraction fees and street location for a user-selected infraction type, printed out and saved in the working directory as "parkgrep.csv"
  3. the minimum, maximum and mean of the particular csv's infraction fees, printed out.
  
## Support and Contributors: 
 
This script was written by KJ Aitken for the DSI Unix unit, with the additional help found for the [use of awk](https://stackoverflow.com/questions/214363/whats-the-quickest-way-to-get-the-mean-of-a-set-of-numbers-from-the-command-lin). Please contact [KJ Aitken](https://github.com/kjaitken) through github for any clarifications. Thank you!
