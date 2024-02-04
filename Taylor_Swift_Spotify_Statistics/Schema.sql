CREATE DATABASE taylor_swift_spotify_statistics;

CREATE TABLE singles(
	title TEXT,
	streams INT
);

-- Placeholder used for the LOAD DATA LOCAL INFILE path to replace private information
LOAD DATA LOCAL INFILE '/path/to/singles.csv'
INTO TABLE singles
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (
	title,
	streams
);

CREATE TABLE studio_albums(
	title TEXT,
	release_date DATE,
	streams BIGINT
);

-- Placeholder used for the LOAD DATA LOCAL INFILE path to replace private information
LOAD DATA LOCAL INFILE '/path/to/studio_albums.csv'
INTO TABLE studio_albums
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (
	title,
	@release_date,
	streams
)
SET release_date = STR_TO_DATE(@release_date, '%m/%d/%y');

CREATE TABLE spotify_stats(
	popularity TEXT,
	followers INT
);

-- Placeholder used for the LOAD DATA LOCAL INFILE path to replace private information
LOAD DATA LOCAL INFILE '/path/to/spotify_stats.csv'
INTO TABLE spotify_stats
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (
	popularity,
	followers
);