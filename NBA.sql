drop database nba_db;
create database nba_db;
use nba_db;

create table Players (
	Player_Name varchar(255),
    college text,
    id int primary key
);

create table Season_Stats (
	Player_Name varchar(255),
    Games_Played int,
    Year int,
    Team varchar(30),
    Field_Goal_Percentage double,
	Free_Throw_Percentage double,
    Total_Assists int,
    Total_Points int,
    id int primary key
);



#SELECT CONCAT(Season_Stats.Field_Goal_Percentage * 100 , '%') as Field_Goal_Percentage
#FROM Season_Stats;

#SELECT CONCAT(Season_Stats.Field_Goal_Percentage * 100 , '%') as Field_Goal_Percentage
#FROM Season_Stats;

select Players.Player_Name, Players.college, Season_Stats.Games_Played, Season_Stats.Year, Season_Stats.Team, Season_Stats.Field_Goal_Percentage, Season_Stats.Free_Throw_Percentage, Season_Stats.Total_Assists, Season_Stats.Total_Points, Season_Stats.id
from Players
JOIN Season_Stats
on Players.Player_Name = Season_Stats.Player_Name;

