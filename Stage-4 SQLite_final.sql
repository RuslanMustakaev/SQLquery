--Count how many games in the database were made in California
SELECT
COUNT(*)
FROM video_games
JOIN game_developers
ON video_games.game_developer = game_developers.name
WHERE state LIKE 'California';

-- Full address (street, city, state, country) of the lastest developer company that release a game, and locate at state with more games released on the database
SELECT
    address, 
    state, 
    city, 
    country
FROM video_games as games 
LEFT join game_developers as developer 
ON games.game_developer = developer.name 
WHERE state IS NOT NULL
GROUP by state
HAVING max(release_date) = release_date
ORDER by COUNT(*) DESC
LIMIT 1;