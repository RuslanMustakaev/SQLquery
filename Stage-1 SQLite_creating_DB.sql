-- Creating DB and tables.

CREATE TABLE video_games(
id INT NOT NULL UNIQUE PRIMARY KEY,
name VARCHAR(255) NOT NULL,
game_genre TEXT NOT NULL,
game_developer VARCHAR(255) NOT NULL,
release_date VARCHAR(255) NOT NULL
);

CREATE TABLE game_developers(
id INT NOT NULL UNIQUE PRIMARY KEY,
name VARCHAR(255) NOT NULL,
address VARCHAR(255),
state VARCHAR(255),
city VARCHAR(255) NOT NULL,
country VARCHAR(255) NOT NULL
);

CREATE TABLE platforms(
id INT NOT NULL UNIQUE PRIMARY KEY,
name VARCHAR(255) NOT NULL,
company_id INT,
company VARCHAR(255),
release_date VARCAHR(255) NOT NULL,
original_price DECIMAL(20, 2) NOT NULL
);

CREATE TABLE platforms_games(
game_id INT,
platform_id INT,
platform_name VARCHAR(255),
CONSTRAINT pk_platforms PRIMARY KEY (game_id, platform_id),
CONSTRAINT fk_video_games FOREIGN KEY (game_id) REFERENCES video_games(id),
CONSTRAINT fk_platforms FOREIGN KEY (platform_id) REFERENCES platforms(id)
);

CREATE TABLE characters(
id INT NOT NULL UNIQUE PRIMARY KEY,
name TEXT NOT NULL,
birthday TEXT NOT NULL,
gender DECIMAL(2,1) NOT NULL,
info TEXT
);

CREATE TABLE games_characters(
character_id INT,
character_name VARCHAR(255),
game_id INT,
CONSTRAINT pk_games_character PRIMARY KEY (game_id, character_id),
CONSTRAINT fk_characters FOREIGN KEY (character_id) REFERENCES characters(id),
CONSTRAINT fk_video_games FOREIGN KEY (game_id) REFERENCES video_games(id)
);