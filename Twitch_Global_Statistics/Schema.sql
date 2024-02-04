CREATE DATABASE twitch_global_statistics;

CREATE TABLE game_data(
	date DATE,
	game TEXT,
	watch_time INT
);

-- Placeholder used for the LOAD DATA LOCAL INFILE path to replace private information
LOAD DATA LOCAL INFILE '/path/to/game_data.csv'
INTO TABLE game_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (
	@date,
	game,
	watch_time
)
SET date = STR_TO_DATE(@date, '%m/%d/%y');

CREATE TABLE streamer_data(
	date DATE,
	channel TEXT,
	watch_time INT
);

-- Placeholder used for the LOAD DATA LOCAL INFILE path to replace private information
LOAD DATA LOCAL INFILE '/path/to/streamer_data.csv'
INTO TABLE streamer_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (
	@date,
	channel,
	watch_time
)
SET date = STR_TO_DATE(@date, '%m/%d/%y');

CREATE TABLE global_data(
	date DATE,
	hours_watched INT,
	hours_streamed INT,
	average_viewers INT,
	peak_viewers INT,
	average_channels INT,
	peak_channels INT
);

-- Placeholder used for the LOAD DATA LOCAL INFILE path to replace private information
LOAD DATA LOCAL INFILE '/path/to/global_data.csv'
INTO TABLE global_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (
	@date,
	hours_watched,
	hours_streamed,
	average_viewers,
	peak_viewers,
	average_channels,
	peak_channels
)
SET date = STR_TO_DATE(@date, '%m/%d/%y');