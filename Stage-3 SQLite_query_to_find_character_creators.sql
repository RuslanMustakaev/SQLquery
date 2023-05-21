-- Search for Nathan Drake in the tables to find out more about him
SELECT 
    character_id, 
    character_name, 
    game_id 
FROM 
    games_characters 
WHERE 
    character_name = 'Nathan Drake';

-- Sum of the total characters directly connected to Nathan Drake
SELECT 
    COUNT(*) 
FROM
    games_characters 
WHERE character_id in (SELECT id 
                       FROM characters 
                       WHERE info LIKE '%Nathan Drake%');

-- Find address (street, state, city, country) of game game developers
SELECT 
    address, 
    state, 
    city, 
    country 
FROM game_developers 
WHERE name = ( SELECT game_developer 
               FROM video_games 
               WHERE id = (SELECT game_id 
                           FROM games_characters 
                           WHERE character_name = 'Nathan Drake'));