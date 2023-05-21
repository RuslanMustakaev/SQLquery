-- Delete rows from games_characters, where column game_id doesn't have a related character_id
DELETE FROM games_characters
WHERE character_id IS NULL;

-- Set date format to columns with the date content
UPDATE platforms
SET release_date = DATE(release_date);

-- Set date format to columns with the date content
UPDATE characters
SET birthday = DATE(birthday);