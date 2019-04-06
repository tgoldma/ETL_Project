create database nba_db;
use nba_db;

create table Players (
	Player varchar(255) PRIMARY key,
    id int,
    college text
);

create table Season_Stats (
	Player varchar(255) primary key,
    id int,
    G int,
    FG decimal,
	FT decimal,
    AST int,
    PTS int
);

select Players.Player, Players.id, Players.college, Season_Stats.Player, Season_Stats.id, Season_Stats.G, Season_Stats.FG, Season_Stats.FT, Season_Stats.AST, Season_Stats.PTS
from Players
JOIN Season_Stats
on Players.Player = Season_Stats.Player