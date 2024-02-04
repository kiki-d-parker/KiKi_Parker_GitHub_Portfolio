-- Top 10 Games by Hours Watched
SELECT game AS "Game",
    SUM(watch_time) AS "Hours Watched"
FROM game_data
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

-- Total Hours Watched of Games
SELECT SUM(watch_time) AS "Total Hours Watched"
FROM game_data;

-- Top 10 Streamers by Hours Watched
SELECT channel AS "Channel",
    SUM(watch_time) AS "Hours Watched"
FROM streamer_data
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

-- Total Hours Watched of Streamers
SELECT SUM(watch_time) AS "Total Hours Watched"
FROM streamer_data;

-- Total Average Viewers
SELECT SUM(average_viewers) AS "Total Average Viewers"
FROM global_data;

-- Average Viewers by Month
SELECT MONTHNAME(date) AS "Month",
    SUM(average_viewers) AS "Average Viewers"
FROM global_data
GROUP BY 1,
    MONTH(date)
ORDER BY MONTH(date);

-- Total Peak Viewers
SELECT SUM(peak_viewers) AS "Total Peak Viewers"
FROM global_data;

-- Peak Viewers by Month
SELECT MONTHNAME(date) AS "Month",
    SUM(peak_viewers) AS "Peak Viewers"
FROM global_data
GROUP BY 1,
    MONTH(date)
ORDER BY MONTH(date);

-- Total Average Channels
SELECT SUM(average_channels) AS "Total Average Channels"
FROM global_data;

-- Average Channels by Month
SELECT MONTHNAME(date) AS "Month",
    SUM(average_channels) AS "Average Channels"
FROM global_data
GROUP BY 1,
    MONTH(date)
ORDER BY MONTH(date);

-- Total Peak Channels
SELECT SUM(peak_channels) AS "Total Peak Channels"
FROM global_data;

-- Peak Channels by Month
SELECT MONTHNAME(date) AS "Month",
    SUM(peak_channels) AS "Peak Channels"
FROM global_data
GROUP BY 1,
    MONTH(date)
ORDER BY MONTH(date);