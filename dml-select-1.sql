## Progression


-- 1. **Write a query to display the team details. Display the records sorted in the order of team name.**
	select * from team order by name;

-- 2. **Write a query to display the player details whose name starts with a letter `S` and who do not belong to the country 'South Africa'. Display the records sorted in descending order based on player name.**
	select * from player where name like 'S%' and contry = 'South Africa';

-- 3. **Write a query to display the event number and the seconds taken for each event. Display the records sorted in ascending order based on event number.**
	select event_no,clock_in_seconds from event order by event_no;

-- 4. **Write a query to display the event numbers of those events which has sum of raid points and defending points greater than or equal to 3. Display the records sorted in ascending order based on event_no.**
	select event_no from event where (raid_points + defencing_points >= 3) order by event_no;

-- 5. **Write a query to display the name of all the players who belong to the country India or Iran. Display the records sorted in ascending order based on player name.**
	select name from player where contry = 'India' or contry = 'Iran' order by name;

-- 6. **Write a query to display the name of all the players who does not belong to the country India and Iran. Display the records sorted in ascending order based on player name.**
	select name from player where contry != 'India' and contry != 'Iran' order by name;

-- 7. **Write a query to display the names of all the skills that start with `Defend`. Display the records sorted in ascending order based on skill name.**
	select name from player where name like 'Defend%' order by name;

-- 8. **Write a query to display all the stadium names that ends with `Complex`. Display the records sorted in ascending order based on stadium names.**
	select stadium_name from venue where stadium_name like '%Complex' order by stadium_name;

-- 9. **Write a query to display the winner team ids and the scores of those teams whose scores are less than 35. Display the records sorted in descending order based on outcome id.**
	select winner_team_id from outcome where score < 35 order by id desc;

-- 10. **Write a query to display the game details of those games that were played between January and March of 2020. Display the records sorted in descending order based on id.**
	select * from game where game_id between '01-jan-2020' and '31-mar-2020' order by id desc;

-- 11. **Write a query to display the names of players who are Raiders. Display the records sorted in ascending order based on player name.**
	select player.name from player,event where player.id = event.raider_id order by name;

-- 12. **Write a query to display the event number, raid points and defence points scored in the first innings of the game that was played on `2020-01-26`. Display the records sorted in ascending order based on event number.**
	select event.event_no,event.raid_points,event.defencing_points from event,innings,game where innings.innings_number = 1 and game.game_id = '26-jan-2020' order by event.event_no;

-- 13. **Write a query to display the name of the winner team in the game played on `2020-03-09`. Display the records sorted in ascending order based on team name.**
	select player.name from player,outcome,game,team where outcome.winner_team_id =player.id  and game.game_id = '09-mar-2020' order by team.name;

-- 14. **Write a query to display the names of players who were the player of the match in the game played on 2020-03-09'. Display the records sorted in ascending order based on player name.**
	select player.name from player,outcome,game where outcome.player_of_match = player.id and game.game_id = '09-mar-2020' order by player.name;

-- 15. **Write a query to display the names of players who are All rounders. Display the records sorted in ascending order based on player name.**
	select player.name from player,skill where skill.name = 'all rounder' order by player.name;

-- 16. **Write a query to display the venue names for all the games that were played on `2020-03-09`. Display the records sorted in ascending order based on venue name.**
	select venue.stadium_name from venue,game where game.game_id = '09-mar-2020' order by venue.stadium_name;

-- 17. **Write a query to display the Coach's name of the team `Iran`**
	select team.coach from team,player where player.team_id = team.id and player.contry = 'Iran';

-- 18. **Write a query to display the event number and the defence points of `Fazel Atrachali` in each event. Display the records sorted in ascending order based on event number.**
	select event.event_no,event.defencing_points from event,player where player.name = 'Fazel Atrachali'
	insert into player values(10,'Fazel Atrachali','china',1,1);

-- 19. **Write a query to display the names of the Winning teams in the month of March 2020. Display the records sorted in ascending order based on team name.**
	select team.name from team,outcome,game where team.id = outcome.winner_team_id and game.game_id between '01-mar-2020' and '31-mar-2020' order by team.name;

-- 20. **Write a query to display the names of players who were the player of the match in the games held in March 2020. Display the records sorted in ascending order based on player name.**
	select player.name from player,outcome,game where player.id = outcome.player_of_match and game.game_id between '01-mar-2020' and '31-mar-2020' order by player.name;