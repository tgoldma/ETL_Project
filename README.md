# ETL_Project

Our project that we went with was looking at NBA players using the Kaggle data source.  Our objective is to explain how we Extracted, Transformed and Loaded the final database during this process.
   
Inside the Kaggle data source we found the information we were looking to research, but it was in 3 different excel files: Player, Player Data, and Season Stats.  The goal was to extract the 3 files by converting them into CSV files based on the information we wanted to be returned, write our query through Jupiter Notebook, and create a DF using relational database MySQL.
    
Getting started we: import pandas as pd, from sqlalchemy import create engine, import pymysql, pymysql. install_as_MySQLdb() to read in our CSV data and then push what we wanted returned to MySQL to a data frame.  There was a lot of columns in the information, so we picked out the once that we wanted in our database at the end (Player Name, id, Year, Team, Games Played, FG%, Free Throw %, Total Assist, and Total Points.) We wanted to join the data on player name, however since Python saw duplicates it was not allowed. So we with the help of out TA's created a unique id numbers and joined on that. Once we uploaded the Players and Season Stats CSV file, we ran into a few issues that needed to be CLEANED.
    
First issue we had was that some of the players played on multiple teams with in the same season so it caused an error because the player was the primary key.  We had to reset the index to player on both data sets.  What we did was make the “id” the primary key so that it could read through the data even with the duplicate names and the players who played with different teams their “id” number assigned stayed the same.  One the MySQL Data set it returned the duplicate names and the total that the player played that particular year.
    
Next, we wanted to convert FG% and FT% from decimals to percentages and pass it to through the MySQL data frame.  The issue we had with that was although it showed up in the Jupiter notebook, you can’t pass characters to MySQL.  Therefore, we left the imported data as decimals.

The Third issue we had was in the Players CSV file college was spelled collage. What we had to was transform and rename the columns according to what we wanted the data to look like.
 
When we finally imported the data from Python to SQL we recieved only 1000 colums out of a possibe 24,000. We had to look at stack overflow to figure out how to have get the rest of the colums recieved.

We decided to use mySQL as our production database because we felt it was the best to manipulate realtional data. The finished product will allow whoever wants to analyze the data, a less Convoluted way to match the player name csv with the season stats csv file. It can be used by various media outlets, statisticians, and even fans of the NBA.
